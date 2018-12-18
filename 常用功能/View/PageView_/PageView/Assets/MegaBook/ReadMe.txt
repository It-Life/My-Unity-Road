
MegaBook Read Me
Please see the MegaBooksDoc.pdf for complete docs for the system. Or right click the inspector and select help.

Note:
When importing the package into Unity 4.x you might see some error messages regarding Mesh Serialization, this is a bug in Unity when it converts projects from Unity 3.x please see the thread at http://forum.unity3d.com/threads/210417-project-4-2-to-4-3-Mismatched-serialization-in-the-builtin-class-Mesh

Introduction
If you have ever needed an animated book in your game then MegaBook is what you need, it is a complete procedural book builder and animator with an advanced page turning animation system and content builder.

MegaBook allows you to quickly and easily create multiple page books with page turning animation in Unity. You can have any number of pages and have the system generate the page meshes for you or you can provide your own custom page meshes or objects and the system will animate those and create a complete book for you. You have complete control over the textures used for the pages and there are options to allow you to have background textures and content textures merged with a mask option. You also have complete control over the generated page meshes with options to control the size of the page and how many vertices are used to build it. Also included is a system to swap pages out for ones with holes in so for big books overdraw is greatly reduced.

The page turning animation can also be controlled so you can define how much a page turns, where it starts to turn etc, MegaBook has dozens of parametes you can tweak to change how the book works all of which can be changed in Editor mode or at runtime if you need. You can also attach objects to each page so it is easy to add GUI elements or even 3d objects to each page and the book system will manage those for you, turning them with the page and disabling them when they cant be seen.

There is an API of methods you can use to easily control the book such as NextPage, PrevPage, SetPage also methods to replace content textures per page or even download new textures direct to a page from the internet or from files.

Creating a Book
To create a new book just go to the GameObject/Create Other menu and select MegaBook. A new default Book will be created in your scene. If you drag the Page slider you will see the pages turn. All the pages will be the same at this point.

The first thing to do is set the number of pages you want in your book so to do this change the Num Pages option until you have the desired page count. Next we need to set the size of the book by opening the Mesh Params section in the inspector. Here you can change the width and length of the pages as well as set the number of vertices to use for each page. When you have set the size and adjusted the number of vertices then you should open the Pages foldout in the inspector. This is where we actually add the content for the book. There will be one page already added for you. It is important to note that if the actual number of content pages does not equal the actual number of physical pages in the book then the book will repeat page content until the book is filled. To change the content for the front and back of the page you just need to select the textures you want to use in the front and back texture boxes. You should see the page contents update as you select your textures.

When you have selected your textures you can add further pages to the book by clicking the 'Add Page' button. When you have more than one content page in your book you can choose which one you are currently editing by changing the 'Edit Page' slider. You will see the inspector change to show the values for the page you select.

Once you have finished adding your content then your book is ready to use. To control which page is displayed you just need to change the 'Flip' float value in the MegaBookBuilder component. The book component has some API methods you can call to control the book such as NextPage, PrevPage, SetPage etc. See below for definitions of the methods. Also included in the system is an example BookControl script which shows how you can control your newly created book.

Once you have a working book then you can play with the values in the Page Turn Options to see how they effect the page turn animation. See below for a description of all the params in the system and what they do.

v1.08
Added a beta option to add support for colliders for pages. Option in Mesh Param called Page Colliders.

v1.07
Undo code correctly placed in Editor folder.

v1.06
Removed warning in Unity 4.3 about mainCamera being obsolete
Fixed inspector bug in 4.3 where inspector was very wide.

v1.05
Fixed an issue in the object attachment that means they are better stuck to the page as it turns now.

v1.04
Fixed issue in inspector where changing one attached objects values was effecting another.

v1.03
Attached objects work correctly if book orientation changed, ie vertical books.
Added per attached object visibility override values for more control over the objects.
Added new methods to the API, GetPageCount, GetCurrentPage, GetCurrentTurn

v1.02
Fixed exception error when adding new attached objects.
Fixed object visibility setting not being updated.

v1.01
Greatly sped up the inspector when changing params for attached objects.
Added helper spine object
Added simple script example for clicking to change pages MegaBookMouseControl.cs

V1.0
First release

