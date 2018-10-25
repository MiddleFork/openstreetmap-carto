# Programatically remove shapefile layers from project.mml, and re-write it.
import yaml

with open('project.mml', 'r') as f:
    document = yaml.load(f)

layers = document['Layer']
layers = [layer for layer in layers if layer['Datasource']['type'] != 'shape']
document['Layer'] = layers
output = yaml.dump(document)

with open('project_noshapes.mml', 'w') as f:
    f.write(output)



