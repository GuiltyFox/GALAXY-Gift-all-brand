.class public final Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.super Lcom/fasterxml/jackson/databind/introspect/Annotated;
.source "AnnotatedClass.java"


# static fields
.field private static final NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;


# instance fields
.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

.field protected _constructors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation
.end field

.field protected _creatorMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected _creatorsResolved:Z

.field protected _defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

.field protected _fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation
.end field

.field protected _memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

.field protected final _mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

.field protected final _primaryMixIn:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _superTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/util/List;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z

    .line 115
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    .line 116
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    .line 117
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 118
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 119
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    :goto_13
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    .line 121
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 122
    return-void

    .line 119
    :cond_18
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_13
.end method

.method private _addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V
    .registers 9

    .prologue
    .line 924
    if-eqz p2, :cond_41

    .line 925
    const/4 v1, 0x0

    .line 926
    array-length v2, p2

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_8
    if-ge v1, v2, :cond_2b

    aget-object v3, p2, v1

    .line 927
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 928
    if-nez v0, :cond_19

    .line 929
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 931
    :cond_19
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 933
    :cond_27
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    goto :goto_24

    .line 936
    :cond_2b
    if-eqz v0, :cond_41

    .line 937
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    .line 938
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V

    goto :goto_31

    .line 942
    :cond_41
    return-void
.end method

.method private _addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V
    .registers 9

    .prologue
    .line 902
    if-eqz p2, :cond_41

    .line 903
    const/4 v1, 0x0

    .line 904
    array-length v2, p2

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_8
    if-ge v1, v2, :cond_2b

    aget-object v3, p2, v1

    .line 905
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 906
    if-nez v0, :cond_19

    .line 907
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 909
    :cond_19
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 911
    :cond_27
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->addIfNotPresent(Ljava/lang/annotation/Annotation;)V

    goto :goto_24

    .line 914
    :cond_2b
    if-eqz v0, :cond_41

    .line 915
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    .line 916
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V

    goto :goto_31

    .line 920
    :cond_41
    return-void
.end method

.method private _addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V
    .registers 9

    .prologue
    .line 946
    if-eqz p2, :cond_41

    .line 947
    const/4 v1, 0x0

    .line 948
    array-length v2, p2

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_8
    if-ge v1, v2, :cond_2b

    aget-object v3, p2, v1

    .line 949
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 950
    if-nez v0, :cond_19

    .line 951
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 953
    :cond_19
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 955
    :cond_27
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->addOrOverride(Ljava/lang/annotation/Annotation;)V

    goto :goto_24

    .line 958
    :cond_2b
    if-eqz v0, :cond_41

    .line 959
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    .line 960
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V

    goto :goto_31

    .line 964
    :cond_41
    return-void
.end method

.method private _emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .registers 2

    .prologue
    .line 820
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V

    return-object v0
.end method

.method private _emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .registers 5

    .prologue
    .line 824
    if-nez p1, :cond_5

    .line 825
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 831
    :cond_4
    return-object v0

    .line 827
    :cond_5
    new-array v0, p1, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 828
    const/4 v1, 0x0

    :goto_8
    if-ge v1, p1, :cond_4

    .line 829
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method private final _isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .registers 3

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private _isIncludableField(Ljava/lang/reflect/Field;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 862
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 870
    :cond_7
    :goto_7
    return v0

    .line 866
    :cond_8
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 867
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 870
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 138
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-static {p0, v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0
.end method

.method public static constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0
.end method

.method private resolveClassAnnotations()V
    .registers 4

    .prologue
    .line 300
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 302
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v0, :cond_4b

    .line 304
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v0, :cond_18

    .line 305
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 308
    :cond_18
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V

    .line 311
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 313
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;)V

    .line 314
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V

    goto :goto_29

    .line 323
    :cond_44
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;)V

    .line 325
    :cond_4b
    return-void
.end method

.method private resolveCreators()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 334
    .line 335
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 336
    array-length v5, v4

    move v3, v1

    move-object v0, v2

    :goto_c
    if-ge v3, v5, :cond_36

    aget-object v6, v4, v3

    .line 337
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_20

    .line 338
    invoke-virtual {p0, v6, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v6

    iput-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 336
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 340
    :cond_20
    if-nez v0, :cond_2e

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    const/16 v7, 0xa

    array-length v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    :cond_2e
    invoke-virtual {p0, v6, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 346
    :cond_36
    if-nez v0, :cond_8c

    .line 347
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    .line 352
    :goto_3e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v0, :cond_53

    .line 353
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    .line 354
    :cond_4e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addConstructorMixIns(Ljava/lang/Class;)V

    .line 363
    :cond_53
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v0, :cond_8f

    .line 364
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v0, :cond_67

    .line 365
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 366
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 369
    :cond_67
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-eqz v0, :cond_8f

    .line 371
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_71
    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_8f

    .line 372
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 373
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v3

    goto :goto_71

    .line 349
    :cond_8c
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    goto :goto_3e

    .line 381
    :cond_8f
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move-object v0, v2

    :goto_97
    if-ge v1, v4, :cond_b9

    aget-object v2, v3, v1

    .line 382
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_a8

    .line 381
    :goto_a5
    add-int/lit8 v1, v1, 0x1

    goto :goto_97

    .line 387
    :cond_a8
    if-nez v0, :cond_b1

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    const/16 v5, 0x8

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 390
    :cond_b1
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructCreatorMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 392
    :cond_b9
    if-nez v0, :cond_c4

    .line 393
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    .line 410
    :cond_c1
    iput-boolean v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z

    .line 411
    return-void

    .line 395
    :cond_c4
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    .line 397
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    if-eqz v0, :cond_cf

    .line 398
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addFactoryMixIns(Ljava/lang/Class;)V

    .line 401
    :cond_cf
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v0, :cond_c1

    .line 403
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_d9
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_c1

    .line 404
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 405
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_d9

    :cond_f4
    move v0, v1

    goto :goto_d9

    :cond_f6
    move v0, v3

    goto/16 :goto_71
.end method

.method private resolveFields()V
    .registers 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_findFields(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_16

    .line 472
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    .line 477
    :goto_15
    return-void

    .line 474
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    .line 475
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15
.end method

.method private resolveMemberMethods()V
    .registers 6

    .prologue
    .line 421
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    .line 422
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;-><init>()V

    .line 424
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_primaryMixIn:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMemberMethods(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V

    .line 427
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 428
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-nez v1, :cond_32

    const/4 v1, 0x0

    .line 429
    :goto_2c
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-virtual {p0, v0, v4, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMemberMethods(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V

    goto :goto_1b

    .line 428
    :cond_32
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    invoke-interface {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_2c

    .line 432
    :cond_39
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-eqz v0, :cond_4e

    .line 433
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_4e

    .line 435
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMethodMixIns(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V

    .line 445
    :cond_4e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v0, :cond_8c

    .line 446
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 447
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 448
    :cond_5c
    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 451
    :try_start_68
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 452
    if-eqz v2, :cond_5c

    .line 453
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v2

    .line 454
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)V

    .line 455
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_89} :catch_8a

    goto :goto_5c

    .line 457
    :catch_8a
    move-exception v0

    goto :goto_5c

    .line 461
    :cond_8c
    return-void
.end method


# virtual methods
.method protected _addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-eqz v0, :cond_d

    .line 494
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 496
    :cond_d
    return-void
.end method

.method protected _addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 501
    if-nez p3, :cond_3

    .line 517
    :cond_2
    return-void

    .line 505
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V

    .line 514
    invoke-static {p3, p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 515
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V

    goto :goto_12
.end method

.method protected _addConstructorMixIns(Ljava/lang/Class;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 527
    const/4 v3, 0x0

    .line 528
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    if-nez v0, :cond_26

    move v1, v2

    .line 529
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    array-length v7, v6

    move v4, v2

    move-object v0, v3

    :goto_e
    if-ge v4, v7, :cond_6e

    aget-object v8, v6, v4

    .line 530
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_2e

    .line 531
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v3, :cond_22

    .line 532
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {p0, v8, v3, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Z)V

    .line 529
    :cond_22
    :goto_22
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_e

    .line 528
    :cond_26
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_7

    .line 535
    :cond_2e
    if-nez v0, :cond_4c

    .line 536
    new-array v3, v1, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    move v5, v2

    .line 537
    :goto_33
    if-ge v5, v1, :cond_4d

    .line 538
    new-instance v9, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v9, v3, v5

    .line 537
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_33

    :cond_4c
    move-object v3, v0

    .line 541
    :cond_4d
    new-instance v5, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v5, v8}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    move v0, v2

    .line 543
    :goto_53
    if-ge v0, v1, :cond_6f

    .line 544
    aget-object v9, v3, v0

    invoke-virtual {v5, v9}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 547
    :cond_60
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    const/4 v5, 0x1

    invoke-virtual {p0, v8, v0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Z)V

    move-object v0, v3

    .line 548
    goto :goto_22

    .line 552
    :cond_6e
    return-void

    :cond_6f
    move-object v0, v3

    goto :goto_22
.end method

.method protected _addFactoryMixIns(Ljava/lang/Class;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 556
    const/4 v0, 0x0

    .line 557
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 559
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    move v2, v3

    :goto_e
    if-ge v2, v7, :cond_67

    aget-object v8, v6, v2

    .line 560
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 559
    :cond_1c
    :goto_1c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_e

    .line 563
    :cond_20
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_1c

    .line 566
    if-nez v0, :cond_45

    .line 567
    new-array v1, v5, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    move v4, v3

    .line 568
    :goto_2c
    if-ge v4, v5, :cond_46

    .line 569
    new-instance v9, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v9, v1, v4

    .line 568
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2c

    :cond_45
    move-object v1, v0

    .line 572
    :cond_46
    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v4, v8}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    move v0, v3

    .line 573
    :goto_4c
    if-ge v0, v5, :cond_68

    .line 574
    aget-object v9, v1, v0

    invoke-virtual {v4, v9}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_59

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 577
    :cond_59
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    const/4 v4, 0x1

    invoke-virtual {p0, v8, v0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)V

    move-object v0, v1

    .line 578
    goto :goto_1c

    .line 581
    :cond_67
    return-void

    :cond_68
    move-object v0, v1

    goto :goto_1c
.end method

.method protected _addFieldMixIns(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    invoke-static {p2, p1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 720
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 721
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_22
    if-ge v1, v4, :cond_f

    aget-object v5, v3, v1

    .line 723
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 721
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 726
    :cond_30
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 729
    if-eqz v0, :cond_2c

    .line 730
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V

    goto :goto_2c

    .line 734
    :cond_44
    return-void
.end method

.method protected _addMemberMethods(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 593
    if-eqz p3, :cond_6

    .line 594
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMethodMixIns(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V

    .line 596
    :cond_6
    if-nez p1, :cond_9

    .line 632
    :cond_8
    return-void

    .line 601
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_f
    if-ge v0, v3, :cond_8

    aget-object v4, v2, v0

    .line 602
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 601
    :cond_19
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 605
    :cond_1c
    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v5

    .line 606
    if-nez v5, :cond_37

    .line 607
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v5

    .line 608
    invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    .line 610
    invoke-virtual {p4, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->remove(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v4

    .line 611
    if-eqz v4, :cond_19

    .line 612
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {p0, v4, v5, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixOvers(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)V

    goto :goto_19

    .line 618
    :cond_37
    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    .line 627
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_19

    .line 628
    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->withMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    goto :goto_19
.end method

.method protected _addMethodMixIns(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 638
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-static {p3, p1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    .line 640
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 641
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v3, :cond_f

    aget-object v4, v2, v0

    .line 642
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 641
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 645
    :cond_2e
    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->find(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v5

    .line 650
    if-eqz v5, :cond_38

    .line 651
    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addMixUnders(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    goto :goto_2b

    .line 657
    :cond_38
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v4

    invoke-virtual {p4, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->add(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    goto :goto_2b

    .line 661
    :cond_40
    return-void
.end method

.method protected _addMixOvers(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 973
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V

    .line 974
    if-eqz p3, :cond_24

    .line 975
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 976
    array-length v4, v3

    move v2, v1

    :goto_10
    if-ge v2, v4, :cond_24

    .line 977
    aget-object v5, v3, v2

    array-length v6, v5

    move v0, v1

    :goto_16
    if-ge v0, v6, :cond_20

    aget-object v7, v5, v0

    .line 978
    invoke-virtual {p2, v2, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->addOrOverrideParam(ILjava/lang/annotation/Annotation;)V

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 976
    :cond_20
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 982
    :cond_24
    return-void
.end method

.method protected _addMixOvers(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 991
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addOrOverrideAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V

    .line 992
    if-eqz p3, :cond_24

    .line 993
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 994
    array-length v4, v3

    move v2, v1

    :goto_10
    if-ge v2, v4, :cond_24

    .line 995
    aget-object v5, v3, v2

    array-length v6, v5

    move v0, v1

    :goto_16
    if-ge v0, v6, :cond_20

    aget-object v7, v5, v0

    .line 996
    invoke-virtual {p2, v2, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->addOrOverrideParam(ILjava/lang/annotation/Annotation;)V

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 994
    :cond_20
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 1000
    :cond_24
    return-void
.end method

.method protected _addMixUnders(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
    .registers 4

    .prologue
    .line 1007
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;[Ljava/lang/annotation/Annotation;)V

    .line 1008
    return-void
.end method

.method protected _collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .registers 3

    .prologue
    .line 891
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V

    .line 892
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Ljava/lang/annotation/Annotation;)V

    .line 893
    return-object v0
.end method

.method protected _collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .registers 6

    .prologue
    .line 881
    array-length v1, p1

    .line 882
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 883
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_11

    .line 884
    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    aput-object v3, v2, v0

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 886
    :cond_11
    return-object v2
.end method

.method protected _constructConstructor(Ljava/lang/reflect/Constructor;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;Z)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 756
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_19

    .line 757
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 798
    :goto_18
    return-object v0

    .line 759
    :cond_19
    if-eqz p2, :cond_29

    .line 760
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    goto :goto_18

    .line 762
    :cond_29
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 763
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    .line 770
    array-length v3, v0

    if-eq v2, v3, :cond_ae

    .line 774
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 776
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_94

    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    if-ne v2, v4, :cond_94

    .line 778
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [[Ljava/lang/annotation/Annotation;

    .line 779
    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 780
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    .line 791
    :goto_52
    if-nez v0, :cond_b2

    .line 792
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Internal error: constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " parameters; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " sets of annotations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_94
    invoke-virtual {v3}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 783
    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_c2

    .line 786
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[Ljava/lang/annotation/Annotation;

    .line 787
    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    goto :goto_52

    .line 796
    :cond_ae
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    .line 798
    :cond_b2
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    move-object v0, v1

    goto/16 :goto_18

    :cond_c2
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_52
.end method

.method protected _constructCreatorMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .registers 5

    .prologue
    .line 804
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_17

    .line 805
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 807
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    goto :goto_16
.end method

.method protected _constructField(Ljava/lang/reflect/Field;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .registers 4

    .prologue
    .line 813
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_e

    .line 814
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 816
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    goto :goto_d
.end method

.method protected _constructMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 748
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_f

    .line 749
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 751
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_collectRelevantAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    goto :goto_e
.end method

.method protected _findFields(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 677
    if-eqz v2, :cond_43

    .line 682
    invoke-virtual {p0, v2, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_findFields(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 683
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_13
    if-ge v1, v4, :cond_33

    aget-object v5, v3, v1

    .line 685
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 683
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 693
    :cond_20
    if-nez v0, :cond_27

    .line 694
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 696
    :cond_27
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructField(Ljava/lang/reflect/Field;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 699
    :cond_33
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-eqz v1, :cond_42

    .line 700
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    invoke-interface {v1, p1}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 701
    if-eqz v1, :cond_42

    .line 702
    invoke-virtual {p0, v2, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_addFieldMixIns(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V

    .line 706
    :cond_42
    :goto_42
    return-object v0

    :cond_43
    move-object v0, p2

    goto :goto_42
.end method

.method protected _isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 842
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 854
    :cond_b
    :goto_b
    return v0

    .line 849
    :cond_c
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v1

    if-nez v1, :cond_b

    .line 853
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    .line 854
    const/4 v2, 0x2

    if-gt v1, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method public annotations()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez v0, :cond_7

    .line 191
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 193
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->annotations()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public fields()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    if-nez v0, :cond_7

    .line 282
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveFields()V

    .line 284
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    return-object v0
.end method

.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    if-nez v0, :cond_7

    .line 267
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveMemberMethods()V

    .line 269
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->find(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    return-object v0
.end method

.method protected getAllAnnotations()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez v0, :cond_7

    .line 199
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 201
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-object v0
.end method

.method public getAnnotated()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .registers 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez v0, :cond_7

    .line 173
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez v0, :cond_7

    .line 212
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-object v0
.end method

.method public getConstructors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z

    if-nez v0, :cond_7

    .line 235
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveCreators()V

    .line 237
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_constructors:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z

    if-nez v0, :cond_7

    .line 227
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveCreators()V

    .line 229
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    return-object v0
.end method

.method public getFieldCount()I
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    if-nez v0, :cond_7

    .line 274
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveFields()V

    .line 276
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getMemberMethodCount()I
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    if-nez v0, :cond_7

    .line 259
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveMemberMethods()V

    .line 261
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;->size()I

    move-result v0

    return v0
.end method

.method public getModifiers()I
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getStaticMethods()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorsResolved:Z

    if-nez v0, :cond_7

    .line 243
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveCreators()V

    .line 245
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_creatorMethods:Ljava/util/List;

    return-object v0
.end method

.method public hasAnnotations()Z
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    if-nez v0, :cond_7

    .line 219
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveClassAnnotations()V

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_classAnnotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;->size()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public memberMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    if-nez v0, :cond_7

    .line 251
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->resolveMemberMethods()V

    .line 253
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_memberMethods:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[AnnotedClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .registers 3

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    return-object v0
.end method

.method public withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .registers 8

    .prologue
    .line 126
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_superTypes:Ljava/util/List;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;Ljava/util/List;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0
.end method
