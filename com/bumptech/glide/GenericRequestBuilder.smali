.class public Lcom/bumptech/glide/GenericRequestBuilder;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:I

.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TModelType;>;"
        }
    .end annotation
.end field

.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/bumptech/glide/Glide;

.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final e:Lcom/bumptech/glide/manager/RequestTracker;

.field protected final f:Lcom/bumptech/glide/manager/Lifecycle;

.field private g:Lcom/bumptech/glide/provider/ChildLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/ChildLoadProvider",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field private i:Lcom/bumptech/glide/load/Key;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener",
            "<-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Float;

.field private o:Lcom/bumptech/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<***TTranscodeType;>;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Float;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Lcom/bumptech/glide/Priority;

.field private t:Z

.field private u:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private y:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<TResourceType;>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/bumptech/glide/provider/LoadProvider",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/bumptech/glide/signature/EmptySignature;->a()Lcom/bumptech/glide/signature/EmptySignature;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->i:Lcom/bumptech/glide/load/Key;

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->p:Ljava/lang/Float;

    .line 71
    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->s:Lcom/bumptech/glide/Priority;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->t:Z

    .line 73
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->a()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->u:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 74
    iput v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->v:I

    .line 75
    iput v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->w:I

    .line 76
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->d:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 77
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->b()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->y:Lcom/bumptech/glide/load/Transformation;

    .line 97
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->b:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->a:Ljava/lang/Class;

    .line 99
    iput-object p4, p0, Lcom/bumptech/glide/GenericRequestBuilder;->d:Ljava/lang/Class;

    .line 100
    iput-object p5, p0, Lcom/bumptech/glide/GenericRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    .line 101
    iput-object p6, p0, Lcom/bumptech/glide/GenericRequestBuilder;->e:Lcom/bumptech/glide/manager/RequestTracker;

    .line 102
    iput-object p7, p0, Lcom/bumptech/glide/GenericRequestBuilder;->f:Lcom/bumptech/glide/manager/Lifecycle;

    .line 103
    if-eqz p3, :cond_3f

    new-instance v0, Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/provider/ChildLoadProvider;-><init>(Lcom/bumptech/glide/provider/LoadProvider;)V

    :cond_3f
    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->g:Lcom/bumptech/glide/provider/ChildLoadProvider;

    .line 106
    if-nez p1, :cond_4c

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_4c
    if-eqz p2, :cond_59

    if-nez p3, :cond_59

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "LoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_59
    return-void
.end method

.method private a()Lcom/bumptech/glide/Priority;
    .registers 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->s:Lcom/bumptech/glide/Priority;

    sget-object v1, Lcom/bumptech/glide/Priority;->d:Lcom/bumptech/glide/Priority;

    if-ne v0, v1, :cond_9

    .line 777
    sget-object v0, Lcom/bumptech/glide/Priority;->c:Lcom/bumptech/glide/Priority;

    .line 783
    :goto_8
    return-object v0

    .line 778
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->s:Lcom/bumptech/glide/Priority;

    sget-object v1, Lcom/bumptech/glide/Priority;->c:Lcom/bumptech/glide/Priority;

    if-ne v0, v1, :cond_12

    .line 779
    sget-object v0, Lcom/bumptech/glide/Priority;->b:Lcom/bumptech/glide/Priority;

    goto :goto_8

    .line 781
    :cond_12
    sget-object v0, Lcom/bumptech/glide/Priority;->a:Lcom/bumptech/glide/Priority;

    goto :goto_8
.end method

.method private a(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;F",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 838
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->g:Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/GenericRequestBuilder;->h:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/GenericRequestBuilder;->i:Lcom/bumptech/glide/load/Key;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/GenericRequestBuilder;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/GenericRequestBuilder;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/bumptech/glide/GenericRequestBuilder;->k:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/GenericRequestBuilder;->r:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/bumptech/glide/GenericRequestBuilder;->l:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bumptech/glide/GenericRequestBuilder;->B:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/bumptech/glide/GenericRequestBuilder;->C:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/GenericRequestBuilder;->m:Lcom/bumptech/glide/request/RequestListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/GenericRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->b()Lcom/bumptech/glide/load/engine/Engine;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->y:Lcom/bumptech/glide/load/Transformation;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->d:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->t:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->u:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->w:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->v:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object/from16 v23, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v15, p4

    invoke-static/range {v1 .. v23}, Lcom/bumptech/glide/request/GenericRequest;->a(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->o:Lcom/bumptech/glide/GenericRequestBuilder;

    if-eqz v0, :cond_75

    .line 795
    iget-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->A:Z

    if-eqz v0, :cond_11

    .line 796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_11
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->o:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->u:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->a()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 801
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->o:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->u:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    iput-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->u:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 804
    :cond_25
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->o:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->s:Lcom/bumptech/glide/Priority;

    if-nez v0, :cond_33

    .line 805
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->o:Lcom/bumptech/glide/GenericRequestBuilder;

    invoke-direct {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->a()Lcom/bumptech/glide/Priority;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->s:Lcom/bumptech/glide/Priority;

    .line 808
    :cond_33
    iget v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->w:I

    iget v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->v:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->a(II)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->o:Lcom/bumptech/glide/GenericRequestBuilder;

    iget v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->w:I

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->o:Lcom/bumptech/glide/GenericRequestBuilder;

    iget v1, v1, Lcom/bumptech/glide/GenericRequestBuilder;->v:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->a(II)Z

    move-result v0

    if-nez v0, :cond_54

    .line 811
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->o:Lcom/bumptech/glide/GenericRequestBuilder;

    iget v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->w:I

    iget v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->v:I

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->b(II)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 814
    :cond_54
    new-instance v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 815
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->p:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->s:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v1

    .line 817
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->A:Z

    .line 819
    iget-object v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->o:Lcom/bumptech/glide/GenericRequestBuilder;

    invoke-direct {v2, p1, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v2

    .line 820
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/bumptech/glide/GenericRequestBuilder;->A:Z

    .line 821
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    .line 832
    :goto_74
    return-object v0

    .line 823
    :cond_75
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->n:Ljava/lang/Float;

    if-eqz v0, :cond_9c

    .line 825
    new-instance v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 826
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->p:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->s:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v1

    .line 827
    iget-object v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->n:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->a()Lcom/bumptech/glide/Priority;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v2

    .line 828
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->a(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    goto :goto_74

    .line 832
    :cond_9c
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->p:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->s:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    goto :goto_74
.end method

.method private b(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/Request;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->s:Lcom/bumptech/glide/Priority;

    if-nez v0, :cond_8

    .line 788
    sget-object v0, Lcom/bumptech/glide/Priority;->c:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->s:Lcom/bumptech/glide/Priority;

    .line 790
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 417
    if-nez p1, :cond_b

    .line 418
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Animation factory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_b
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->u:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 422
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 676
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 677
    if-nez p1, :cond_e

    .line 678
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must pass in a non null View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_e
    iget-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->z:Z

    if-nez v0, :cond_27

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 682
    sget-object v0, Lcom/bumptech/glide/GenericRequestBuilder$2;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 697
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->c:Lcom/bumptech/glide/Glide;

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->d:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/Glide;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->a(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    move-result-object v0

    return-object v0

    .line 684
    :pswitch_34
    invoke-virtual {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->f()V

    goto :goto_27

    .line 689
    :pswitch_38
    invoke-virtual {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->e()V

    goto :goto_27

    .line 682
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method public a(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 642
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 643
    if-nez p1, :cond_e

    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must pass in a non null Target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_e
    iget-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->j:Z

    if-nez v0, :cond_1b

    .line 647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must first set a model (try #load())"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_1b
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->c()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_2c

    .line 653
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->d()V

    .line 654
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->e:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/RequestTracker;->b(Lcom/bumptech/glide/request/Request;)V

    .line 655
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->a()V

    .line 658
    :cond_2c
    invoke-direct {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->b(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 659
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->a(Lcom/bumptech/glide/request/Request;)V

    .line 660
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->f:Lcom/bumptech/glide/manager/Lifecycle;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/manager/Lifecycle;->a(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 661
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->e:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/RequestTracker;->a(Lcom/bumptech/glide/request/Request;)V

    .line 663
    return-object p1
.end method

.method public b(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 563
    invoke-static {p1, p2}, Lcom/bumptech/glide/util/Util;->a(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 564
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_f
    iput p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->w:I

    .line 567
    iput p2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->v:I

    .line 569
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder",
            "<TDataType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->g:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_9

    .line 247
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->g:Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->a(Lcom/bumptech/glide/load/Encoder;)V

    .line 250
    :cond_9
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 587
    if-nez p1, :cond_b

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Signature must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_b
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->i:Lcom/bumptech/glide/load/Key;

    .line 591
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TDataType;TResourceType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->g:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_9

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->g:Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->a(Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 211
    :cond_9
    return-object p0
.end method

.method public b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 271
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->x:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 273
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 606
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->h:Ljava/lang/Object;

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->j:Z

    .line 608
    return-object p0
.end method

.method public b(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 548
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->t:Z

    .line 550
    return-object p0

    .line 548
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public c(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 503
    iput p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->l:I

    .line 505
    return-object p0
.end method

.method public varargs c([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation",
            "<TResourceType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 322
    iput-boolean v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->z:Z

    .line 323
    array-length v0, p1

    if-ne v0, v1, :cond_c

    .line 324
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->y:Lcom/bumptech/glide/load/Transformation;

    .line 329
    :goto_b
    return-object p0

    .line 326
    :cond_c
    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->y:Lcom/bumptech/glide/load/Transformation;

    goto :goto_b
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->g()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 434
    iput p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->k:I

    .line 436
    return-object p0
.end method

.method e()V
    .registers 1

    .prologue
    .line 772
    return-void
.end method

.method f()V
    .registers 1

    .prologue
    .line 768
    return-void
.end method

.method public g()Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericRequestBuilder",
            "<TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 624
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GenericRequestBuilder;

    .line 626
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->g:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->g:Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-virtual {v1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->g()Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-result-object v1

    :goto_10
    iput-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->g:Lcom/bumptech/glide/provider/ChildLoadProvider;
    :try_end_12
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_12} :catch_15

    .line 627
    return-object v0

    .line 626
    :cond_13
    const/4 v1, 0x0

    goto :goto_10

    .line 628
    :catch_15
    move-exception v0

    .line 629
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
