from pathlib import Path
import os

dirs = os.listdir(Path())
for i in dirs:
    if not i.endswith('.py') and not i.endswith('.json'):
        os.rename(Path()/i, os.path.join(Path(), i.lower().replace(' ', '_') + '.json'))
