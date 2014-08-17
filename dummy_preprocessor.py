class dummy_preprocessor(object):
    '''
    A dummy preprocessor class that does nothing, just returns the input data.
    '''
    def __call__(self, data, add_namespace=False):
        return data
