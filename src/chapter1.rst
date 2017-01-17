Chapter One
===========

This is an example, *hello world!* If you're not satisfied about this explanation, clic the following `link to markup <http://www.sphinx-doc.org/en/1.5.1/markup/>`_.

This is an unordered list:

* apple
* pear
* date palm

This is an ordered list:

1. apple
2. pear
3. date palm

This is a xml code-bloch integrated:

.. code-block:: xml

    <?xml version="1.0" encoding="UTF-8"?>
    <interface>
      <!-- interface-requires gtk+ 3.0 -->
      <object class="GtkWindow" id="window1">
        <property name="can_focus">False</property>
        <child>
          <object class="GtkButton" id="button1">
            <property name="label" translatable="yes">button</property>
            <property name="use_action_appearance">False</property>
            <property name="visible">True</property>
            <property name="can_focus">True</property>
            <property name="receives_default">True</property>
            <property name="use_action_appearance">False</property>
          </object>
        </child>
      </object>
    </interface>

Section One
-----------
The following example is a ``literalinclude`` of an external xml file:

.. literalinclude:: ./includes/example.glade
	:language: xml
        :linenos:

Section Two
-----------
The following example is a code-block in Python:

.. code-block:: python

    def hello(button):
        print("Hello World!")

This is a paragraph with a reference [cpao]_ to be called next.

.. [cpao] A reference.

.. _gnupng:

How to deal with images
-----------------------

This is an image as-is, without alignament or transformations: 

.. image:: images/gnu.png
