from setuptools import find_packages, setup


setup(
    name='myproject',
    version='0.1.0',
    description='My super project',
    long_description='The long description of my super project',
    author='Julien Castets',
    author_email='castets.j@gmail.com',
    url='https://www.scaleway.com',
    packages=find_packages(),
    install_requires=[
        'requests ==2.10.0.git',
    ],
    dependency_links=[
        'git+https://github.com/kennethreitz/requests.git@v2.10.0#egg=requests-2.10.0.git'
    ],
    classifiers=[
        # As from http://pypi.python.org/pypi?%3Aaction=list_classifiers
        'Intended Audience :: Developers',
        # ...
    ],
    license='WTFPL',
)
