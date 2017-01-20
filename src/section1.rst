ReStructuredText
================

Headings
--------

With headings we define the basic structure of a document::

  Section
  =======

  Subsection
  ----------

  Subsubsection
  ^^^^^^^^^^^^^

  Paragraph
  """""""""

Two simple rules:

   - use at least as many characters as the length of the title;
   - characters usage is quite flexible but be consistent.

Text markup
-----------

Inline markup:

   * *italic*;
   * **bold**;
   * ``code sample``;

List items
----------

This is an unordered list:

   * apple
   * pear
   * date palm

This is an ordered list:

   1. apple
   2. pear
   3. date palm

This is a definitions list:

   apple
      An apple is a fruit.
   pear
      A pear is a fruit.

This is a fields list:
 
   :what: This is a field.
   :how:  This is a field.

A command-line options list:

   -a        option "a"
   -b file   option "b" on a file

.. _my-reference-code:

Code
----

The easiest way to show code is using two colon marks::

   def myFunction(foo, bar=True):
       return None

This is an example of ``code-block`` for XML:

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

This is an example of ``code-block`` for Python:

.. code-block:: python

    def hello(button):
            print("Hello World!")

This is an example of ``literalinclude`` with an external file:

.. literalinclude:: ./includes/example.glade
	:language: xml
        :linenos:

Images
------

This is a scaled image, center aligned, with a link: 

.. image:: images/gnu.png
   :scale: 60%
   :alt: Alternative Text
   :align: center
   :target: http://www.gnu.org

This is a figure, with a caption, a number and a reference:

.. _myfigureref:
.. figure:: images/gnu.png
   :align: center

   This is a caption for a figure.


Maths and equations
-------------------

Math language could be used inline (see. :math:`\alpha > \beta`) or not (see. LaTeX syntax):

.. math::
   n_{\mathrm{offset}} = \sum_{k=0}^{N-1} s_k n_k

For example:

.. math::
   :nowrap:

   \begin{eqnarray}
      y    & = & ax^2 + bx + c \\
      f(x) & = & x^2 + 2xy + y^2
   \end{eqnarray}

For example:

.. math:: e^{i\pi} + 1 = 0
   :label: euler

Hyperlinks
----------

Internal hyperlinks. 

   - a link to a section (see. :ref: `my-reference-code`).
   - a link to a figure (see. :ref: `myfigureref`).

External hyperlinks.

   - a link to a `website <http://www.google.com>`_.
  
Console commands
----------------

Examples:

   - :command:`rm -fr ~/garbage/`;
   - :command:`sudo dnf search sphinx | grep template | more`.

Footnotes
---------

This is a footnote [#f1]_ and this is the second one [#f2]_.

Epigraph
--------

.. epigraph::
     Walk straigth ahead, take the best with you.
      -- |dm|

Blocks
------

.. error::
   This is an error message.

.. hint::
   This is a hint.

.. note::
   This is a note.

.. warning::
   This is a warning.

.. include:: includes/inclusion.txt

Sidebar
-------

.. sidebar:: A sidebar

   :subtitle: Sidebar subtitle
   
      A sidebar can help you for notes on a
      side of the page. It render well in html
      but even in latex/pdf.

.. include:: includes/inclusion.txt


.. rubric:: Footnotes
.. [#f1] The first footnote.
.. [#f2] The second footnote.
