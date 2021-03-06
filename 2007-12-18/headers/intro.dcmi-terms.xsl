<?xml version='1.0' encoding='UTF-8'?>

<xsl:stylesheet version="1.0"	
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

<xsl:template name="terms_intro">

<p/>
This document is an up-to-date, authoritative specification
of all metadata terms maintained by the Dublin Core Metadata
Initiative.  Included are the fifteen terms of the Dublin Core
Metadata Element Set, which have also been published as IETF
RFC 5013 [<a href="#RFC5013">RFC5013</a>], ANSI/NISO Standard
Z39.85-2007 [<a href="#NISOZ3985">NISOZ3985</a>], and ISO
Standard 15836-21003 [<a href="#ISO15836">ISO15836</a>].

<p/>
Each term is specified with the following minimal set of attributes:
<p/>
<table width="95%" border="0" align="center">

<tr><td width="20%">
<b>Name:</b>
</td><td width="80%">
A token appended to the URI of a DCMI namespace to create the URI of the term.
</td></tr>

<tr><td width="20%">
<b>Label:</b>
</td><td width="80%">
The human-readable label assigned to the term.
</td></tr>

<tr><td width="20%">
<b>URI:</b>
</td><td width="80%">
The Uniform Resource Identifier used to uniquely identify a term.
</td></tr>

<tr><td width="20%">
<b>Definition:</b>
</td><td width="80%">
A statement that represents the concept and essential nature of the term.
</td></tr>

<tr><td width="20%">
<b>Type of Term:</b>
</td><td width="80%">
The type of term as described in the DCMI Abstract Model [<a href="#DCAM">DCAM</a>].
</td></tr>
</table>

<p/>
Where applicable, the following attributes provide additional information about a term:
<p/>
<table width="95%" border="0" align="center">

<tr><td width="20%">
<b>Comment:</b>
</td><td width="80%">
Additional information about the term or its application.
</td></tr>

<tr><td width="20%">
<b>See:</b>
</td><td width="80%">
Authoritative documentation related to the term.
</td></tr>

<tr><td width="20%">
<b>References:</b>
</td><td width="80%">
A resource referenced in the Definition or Comment.
</td></tr>

<tr><td width="20%">
<b>Refines:</b>
</td><td width="80%">
A Property of which the described term is a Sub-Property.
</td></tr>

<tr><td width="20%">
<b>Broader Than:</b>
</td><td width="80%">
A Class of which the described term is a Super-Class.
</td></tr>

<tr><td width="20%">
<b>Narrower Than:</b>
</td><td width="80%">
A Class of which the described term is a Sub-Class.
</td></tr>

<tr><td width="20%">
<b>Has Domain:</b>
</td><td width="80%">
A Class of which a resource described by the term is an Instance.
</td></tr>

<tr><td width="20%">
<b>Has Range:</b>
</td><td width="80%">
A Class of which a value described by the term is an Instance.
</td></tr>

<tr><td width="20%">
<b>Member Of:</b>
</td><td width="80%">
An enumerated set of resources (Vocabulary Encoding Scheme) of which the term is a Member.
</td></tr>

<tr><td width="20%">
<b>Instance Of:</b>
</td><td width="80%">
A Class of which the described term is an instance.
</td></tr>

<tr><td width="20%">
<b>Version:</b>
</td><td width="80%">
A specific historical description of a term.
</td></tr>
</table>


<p/>
This documentation is maintained by the DCMI Usage
Board in accordance with the DCMI Namespace Policy 
[<a href="#NAMESPACE">NAMESPACE</a>].  The namespace policy
says that DCMI terms are identified using Uniform Resource
Identifiers (URIs).  In accordance with the principle that
distinct URIs should be assigned to distinct resources, the
policy sets limits on the range of editorial changes that
may allowably be made to the official labels, definitions,
and usage comments associated with DCMI terms.  By policy, any
changes of meaning judged "likely to have a substantial impact
on either machine processing of DCMI terms or the functional
semantics of the terms" must trigger the creation of a new,
distinct term with a new, distinct URI.
For further information about the change history
and the corresponding Usage Board decisions, please
consult the document "DCMI Metadata Terms: A complete
historical record" [<a href="#HISTORY">HISTORY</a>].

<p/>
The current release of "DCMI Metadata Terms" reflects editorial
changes approved since December 2006, notably:<ul>
<li>improved definitions, descriptive labels, and usage comments,</li>
<li>differentiation of Encoding Schemes between Syntax Encoding 
Schemes and Vocabulary Encoding Schemes, with clarified definitions,</li>
<li>updated references to standards maintained by the Internet
Engineering Task Force and the International Organization for
Standardization (ISO),</li>
<li>two new terms related to the DCMI Abstract Model [<a href="#DCAM">DCAM</a>],</li>
<li>clarification in the DCMI Abstract Model that a Vocabulary Encoding 
Scheme is an "enumerated set of resources" (such as the DCMI Type 
Vocabulary, a set of classes), and</li>
<li>the specification of formal domains and ranges (and in some 
cases, subproperty relations) for DCMI properties, as discussed below.</li>
</ul>
These changes are described more fully in the
documents "Revisions to DCMI Metadata Terms" [<a
href="#REVISIONS">REVISIONS</a>] and "Domains and Ranges for
DCMI Properties" [<a href="#DOMAINS">DOMAINS</a>].

<p/>
Formal domains and ranges specify what kind of described
resources and value resources are associated with a given
property.  Domains and ranges express the meanings implicit in
natural-language definitions in an explicit form that is usable
for the automatic processing of logical inferences.  
When a given property is encountered, an inferencing application
may use the domains and ranges assigned by DCMI to that property 
in order to make inferences about the resources described thereby.

<p/>
So as not to affect the conformance of existing implementations
of "simple Dublin Core" in RDF, domains and ranges have
not been specified for the fifteen properties of the dc:
namespace (http://purl.org/dc/elements/1.1/).  Rather,
fifteen new properties with "names" identical to those of
DCMES Version 1.1 have been created in the dcterms: namespace
(http://purl.org/dc/terms/).  These fifteen new properties
have been defined as subproperties of the corresponding
properties of DCMES Version 1.1 and assigned domains and
ranges as outlined in this document.

<p/>
Implementers may freely choose to use these fifteen properties
either in their legacy dc: variant (e.g., dc:creator) or
in the dcterms: variant (e.g., dcterms:creator) depending
on application requirements.  The RDF schemas of
the DCMI namespaces describe the subproperty relation of
dcterms:creator to dc:creator for use by Semantic
Web-aware applications.  Over time, however, implementers are 
encouraged to use the semantically more precise dcterms: 
properties, as they more fully follow emerging notions of 
best practice for machine-processable metadata.

<p/>
This document reflects the terminology used in the revised DCMI Abstract 
Model approved as a DCMI Recommendation in 2007 [<a href="#DCAM">DCAM</a>].
A table comparing the two terminologies is presented below.

<table class="border" summary="DCMI Grammatical Principles and DCMI Abstract Model">
<tr>
<th>DCMI Grammatical Principles [<a href="#DCGRAM">DCGRAM</a>]</th>
<th>DCMI Abstract Model [<a href="#DCAM">DCAM</a>]</th>
</tr>
<tr>
<td>vocabulary term</td>
<td>
<em>resource</em></td>
</tr>
<tr>
<td>element</td>
<td>
<em>property</em> or <em>element</em></td>
</tr>
<tr>
<td>element refinement</td>
<td>
<em>property</em> with <em>sub-property of</em> relation</td>
</tr>
<tr>
<td>encoding scheme</td>
<td>
<em>syntax encoding scheme</em> or <em>vocabulary encoding scheme</em></td>
</tr>
<tr>
<td>syntax encoding scheme</td>
<td>
<em>syntax encoding scheme</em></td>
</tr>
<tr>
<td>qualifier</td>
<td>
<em>property</em> with <em>sub-property of</em> relation, <em>syntax encoding scheme</em>, or <em>vocabulary encoding scheme</em></td>
</tr>
<tr>
<td>vocabulary encoding scheme</td>
<td>
<em>vocabulary encoding scheme</em></td>
</tr>
</table>

<p><strong>Legacy terminology compared</strong></p>


<p/>
DCMI maintains a Web page with pointers to known translations
of semantic specifications and related DCMI documents [<a
href="#TRANSLATIONS">TRANSLATIONS</a>]

<p/>
<h4>References</h4>
<table width="95%" border="0" align="center">

<tr><td width="20%">
<a name="DCAM"><xsl:text disable-output-escaping='yes'>&amp;nbsp;</xsl:text></a>[DCAM]
</td><td width="80%">
<a href="/documents/2007/06/04/abstract-model/">http://dublincore.org/documents/2007/06/04/abstract-model/</a>
</td></tr>

<tr><td width="20%">
<a name="DCMES-CHANGES"><xsl:text disable-output-escaping='yes'>&amp;nbsp;</xsl:text></a>[DCMES-CHANGES]
</td><td width="80%">
<a href="/usage/decisions/2006/2006-03.dcmes-changes.shtml">http://dublincore.org/usage/decisions/2006/2006-03.dcmes-changes.shtml</a>
</td></tr>

<tr><td width="20%">
<a name="DCGRAM"><xsl:text disable-output-escaping='yes'>&amp;nbsp;</xsl:text></a>[DCGRAM]
</td><td width="80%">
<a href="/usage/documents/principles/">http://dublincore.org/usage/documents/principles/</a>
</td></tr>

<tr><td width="20%">
<a name="DOMAINS"><xsl:text disable-output-escaping='yes'>&amp;nbsp;</xsl:text></a>[DOMAINS]
</td><td width="80%">
<a href="/documents/2008/01/14/domain-range/">http://dublincore.org/documents/2008/01/14/domain-range/</a>
</td></tr>

<tr><td width="20%">
<a name="HISTORY"><xsl:text disable-output-escaping='yes'>&amp;nbsp;</xsl:text></a>[HISTORY]
</td><td width="80%">
<a href="/usage/terms/history/">http://dublincore.org/usage/terms/history/</a>
</td></tr>

<tr><td width="20%">
<a name="ISO15836"><xsl:text disable-output-escaping='yes'>&amp;nbsp;</xsl:text></a>[ISO15836]
</td><td width="80%">
<a href="http://www.niso.org/international/SC4/n515.pdf">http://www.niso.org/international/SC4/n515.pdf</a>
</td></tr>

<tr><td width="20%">
<a name="NAMESPACE"><xsl:text disable-output-escaping='yes'>&amp;nbsp;</xsl:text></a>[NAMESPACE]
</td><td width="80%">
<a href="/documents/dcmi-namespace/">http://dublincore.org/documents/dcmi-namespace/</a>
</td></tr>

<tr><td width="20%">
<a name="NISOZ3985"><xsl:text disable-output-escaping='yes'>&amp;nbsp;</xsl:text></a>[NISOZ3985]
</td><td width="80%">
<a href="http://www.niso.org/standards/resources/Z39-85-2007.pdf">http://www.niso.org/standards/resources/Z39-85-2007.pdf</a>
</td></tr>

<tr><td width="20%">
<a name="RFC5013"><xsl:text disable-output-escaping='yes'>&amp;nbsp;</xsl:text></a>[RFC5013]
</td><td width="80%">
<a href="http://www.ietf.org/rfc/rfc5013.txt">http://www.ietf.org/rfc/rfc5013.txt</a>
</td></tr>

<tr><td width="20%">
<a name="TRANSLATIONS"><xsl:text disable-output-escaping='yes'>&amp;nbsp;</xsl:text></a>[TRANSLATIONS]
</td><td width="80%">
<a href="/resources/translations/">http://dublincore.org/resources/translations/</a>
</td></tr>


</table>
</xsl:template>
</xsl:stylesheet>

