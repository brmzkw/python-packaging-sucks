from setuptools import find_packages, setup


setup(
    name='b-proj',
    version='0.1.0',
    description='My super B project',
    long_description='The long description of my super project',
    author='Julien Castets',
    author_email='castets.j@gmail.com',
    url='https://www.scaleway.com',
    packages=find_packages(),
    install_requires=[
        'requests <=2.5.0',
    ],
    classifiers=[
        # As from http://pypi.python.org/pypi?%3Aaction=list_classifiers
        'Intended Audience :: Developers',
        # ...
    ],
    license='WTFPL',
    entry_points={
        'console_scripts': [
            'bproj = bproj.run:main',
        ],
    },
)
