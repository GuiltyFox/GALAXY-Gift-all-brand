.class Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# static fields
.field private static final j:Landroid/graphics/Matrix;


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:I

.field f:Ljava/lang/String;

.field final g:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Matrix;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/PathMeasure;

.field private o:I

.field private final p:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 907
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->j:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->k:Landroid/graphics/Matrix;

    .line 918
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a:F

    .line 919
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->b:F

    .line 920
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->c:F

    .line 921
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->d:F

    .line 922
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->e:I

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->f:Ljava/lang/String;

    .line 925
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->g:Landroid/support/v4/util/ArrayMap;

    .line 928
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->p:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 929
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->h:Landroid/graphics/Path;

    .line 930
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->i:Landroid/graphics/Path;

    .line 931
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->k:Landroid/graphics/Matrix;

    .line 918
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a:F

    .line 919
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->b:F

    .line 920
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->c:F

    .line 921
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->d:F

    .line 922
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->e:I

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->f:Ljava/lang/String;

    .line 925
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->g:Landroid/support/v4/util/ArrayMap;

    .line 953
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->p:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->g:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v1, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->p:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 954
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->h:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->h:Landroid/graphics/Path;

    .line 955
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->i:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->i:Landroid/graphics/Path;

    .line 956
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a:F

    .line 957
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->b:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->b:F

    .line 958
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->c:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->c:F

    .line 959
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->d:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->d:F

    .line 960
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->o:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->o:I

    .line 961
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->e:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->e:I

    .line 962
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->f:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->f:Ljava/lang/String;

    .line 963
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->f:Ljava/lang/String;

    if-eqz v0, :cond_65

    .line 964
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->g:Landroid/support/v4/util/ArrayMap;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    :cond_65
    return-void
.end method

.method private static a(FFFF)F
    .registers 6

    .prologue
    .line 1086
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private a(Landroid/graphics/Matrix;)F
    .registers 14

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 1100
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_3e

    .line 1101
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 1102
    aget v2, v1, v8

    float-to-double v2, v2

    aget v4, v1, v9

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1103
    aget v3, v1, v10

    float-to-double v4, v3

    aget v3, v1, v11

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 1104
    aget v4, v1, v8

    aget v5, v1, v9

    aget v6, v1, v10

    aget v1, v1, v11

    invoke-static {v4, v5, v6, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a(FFFF)F

    move-result v1

    .line 1106
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1109
    cmpl-float v3, v2, v0

    if-lez v3, :cond_3d

    .line 1110
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    .line 1115
    :cond_3d
    return v0

    .line 1100
    :array_3e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic a(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 890
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->m:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic a(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
    .registers 2

    .prologue
    .line 890
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->p:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    return-object v0
.end method

.method private a(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 15

    .prologue
    .line 974
    invoke-static {p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->b(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 976
    invoke-static {p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->b(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 979
    const/4 v0, 0x0

    move v7, v0

    :goto_14
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_49

    .line 980
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 981
    instance-of v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v0, :cond_38

    .line 982
    check-cast v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 983
    invoke-static {p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->b(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 979
    :cond_34
    :goto_34
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_14

    .line 985
    :cond_38
    instance-of v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    if-eqz v0, :cond_34

    move-object v2, v1

    .line 986
    check-cast v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 987
    invoke-direct/range {v0 .. v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_34

    .line 990
    :cond_49
    return-void
.end method

.method private a(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 15

    .prologue
    .line 999
    int-to-float v0, p4

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->c:F

    div-float/2addr v0, v1

    .line 1000
    int-to-float v1, p5

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->d:F

    div-float/2addr v1, v2

    .line 1001
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1002
    invoke-static {p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->b(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;

    move-result-object v3

    .line 1004
    iget-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->k:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1005
    iget-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->k:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1008
    invoke-direct {p0, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a(Landroid/graphics/Matrix;)F

    move-result v0

    .line 1009
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_24

    .line 1083
    :cond_23
    :goto_23
    return-void

    .line 1013
    :cond_24
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->h:Landroid/graphics/Path;

    invoke-virtual {p2, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->a(Landroid/graphics/Path;)V

    .line 1014
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->h:Landroid/graphics/Path;

    .line 1016
    iget-object v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->i:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1018
    invoke-virtual {p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->a()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1019
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->i:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1020
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto :goto_23

    .line 1022
    :cond_45
    check-cast p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    .line 1023
    iget v3, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->g:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_56

    iget v3, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->h:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9a

    .line 1024
    :cond_56
    iget v3, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->g:F

    iget v4, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->i:F

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v3, v4

    .line 1025
    iget v4, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->h:F

    iget v5, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->i:F

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    rem-float/2addr v4, v5

    .line 1027
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->n:Landroid/graphics/PathMeasure;

    if-nez v5, :cond_71

    .line 1028
    new-instance v5, Landroid/graphics/PathMeasure;

    invoke-direct {v5}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->n:Landroid/graphics/PathMeasure;

    .line 1030
    :cond_71
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->n:Landroid/graphics/PathMeasure;

    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->h:Landroid/graphics/Path;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1032
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->n:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    .line 1033
    mul-float/2addr v3, v5

    .line 1034
    mul-float/2addr v4, v5

    .line 1035
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1036
    cmpl-float v6, v3, v4

    if-lez v6, :cond_123

    .line 1037
    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->n:Landroid/graphics/PathMeasure;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v5, v1, v7}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1038
    iget-object v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->n:Landroid/graphics/PathMeasure;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v1, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1042
    :goto_95
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1044
    :cond_9a
    iget-object v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->i:Landroid/graphics/Path;

    iget-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->k:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1046
    iget v1, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->c:I

    if-eqz v1, :cond_d2

    .line 1047
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->m:Landroid/graphics/Paint;

    if-nez v1, :cond_bd

    .line 1048
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->m:Landroid/graphics/Paint;

    .line 1049
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->m:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1050
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->m:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1053
    :cond_bd
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->m:Landroid/graphics/Paint;

    .line 1054
    iget v3, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->c:I

    iget v4, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->f:F

    invoke-static {v3, v4}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(IF)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1055
    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1056
    iget-object v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->i:Landroid/graphics/Path;

    invoke-virtual {p3, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1059
    :cond_d2
    iget v1, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->a:I

    if-eqz v1, :cond_23

    .line 1060
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->l:Landroid/graphics/Paint;

    if-nez v1, :cond_ee

    .line 1061
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->l:Landroid/graphics/Paint;

    .line 1062
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->l:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1063
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->l:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1066
    :cond_ee
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->l:Landroid/graphics/Paint;

    .line 1067
    iget-object v3, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->k:Landroid/graphics/Paint$Join;

    if-eqz v3, :cond_f9

    .line 1068
    iget-object v3, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->k:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1071
    :cond_f9
    iget-object v3, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->j:Landroid/graphics/Paint$Cap;

    if-eqz v3, :cond_102

    .line 1072
    iget-object v3, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->j:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1075
    :cond_102
    iget v3, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->l:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1076
    iget v3, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->a:I

    iget v4, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->d:F

    invoke-static {v3, v4}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(IF)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1077
    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1078
    mul-float/2addr v0, v2

    .line 1079
    iget v2, p2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->b:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1080
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->i:Landroid/graphics/Path;

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_23

    .line 1040
    :cond_123
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->n:Landroid/graphics/PathMeasure;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v4, v1, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/16 :goto_95
.end method

.method static synthetic b(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 890
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->m:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic b(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 890
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->l:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic c(Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;
    .registers 2

    .prologue
    .line 890
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->l:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 938
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->e:I

    return v0
.end method

.method public a(F)V
    .registers 3

    .prologue
    .line 944
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a(I)V

    .line 945
    return-void
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 934
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->e:I

    .line 935
    return-void
.end method

.method public a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 12

    .prologue
    .line 994
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->p:Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    sget-object v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->j:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 995
    return-void
.end method

.method public b()F
    .registers 3

    .prologue
    .line 949
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPathRenderer;->a()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method
