from setuptools import find_packages, setup


setup(
    name='mylib',
    version='0.1.0',
    description='My super library',
    long_description='The long description of my super library',
    author='Julien Castets',
    author_email='castets.j@gmail.com',
    url='https://www.scaleway.com',
    packages=find_packages(),
    install_requires=[
    ],
    classifiers=[
        # As from http://pypi.python.org/pypi?%3Aaction=list_classifiers
        'Intended Audience :: Developers',
        # ...
    ],
    license='WTFPL',
)
