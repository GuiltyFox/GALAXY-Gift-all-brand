.class public Lcom/nineoldandroids/animation/ValueAnimator;
.super Lcom/nineoldandroids/animation/Animator;
.source "ValueAnimator.java"


# static fields
.field private static h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final l:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final m:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final n:Landroid/view/animation/Interpolator;

.field private static final o:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private static final p:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private static z:J


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/view/animation/Interpolator;

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field b:J

.field c:J

.field d:I

.field e:Z

.field f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nineoldandroids/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:I

.field private s:F

.field private t:Z

.field private u:J

.field private v:Z

.field private w:Z

.field private x:J

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->h:Ljava/lang/ThreadLocal;

    .line 98
    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator$1;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator$1;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->i:Ljava/lang/ThreadLocal;

    .line 107
    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator$2;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator$2;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->j:Ljava/lang/ThreadLocal;

    .line 119
    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator$3;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator$3;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->k:Ljava/lang/ThreadLocal;

    .line 127
    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator$4;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator$4;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->l:Ljava/lang/ThreadLocal;

    .line 135
    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator$5;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator$5;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->m:Ljava/lang/ThreadLocal;

    .line 144
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->n:Landroid/view/animation/Interpolator;

    .line 148
    new-instance v0, Lcom/nineoldandroids/animation/IntEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/IntEvaluator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->o:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 149
    new-instance v0, Lcom/nineoldandroids/animation/FloatEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->p:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 222
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/nineoldandroids/animation/ValueAnimator;->z:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-direct {p0}, Lcom/nineoldandroids/animation/Animator;-><init>()V

    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->c:J

    .line 155
    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->q:Z

    .line 161
    iput v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->r:I

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->s:F

    .line 171
    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->t:Z

    .line 187
    iput v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->d:I

    .line 197
    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->v:Z

    .line 203
    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->w:Z

    .line 209
    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->e:Z

    .line 216
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->x:J

    .line 219
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->y:J

    .line 226
    iput v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->A:I

    .line 233
    const/4 v0, 0x1

    iput v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->B:I

    .line 240
    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->n:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->C:Landroid/view/animation/Interpolator;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->D:Ljava/util/ArrayList;

    .line 284
    return-void
.end method

.method static synthetic a(Lcom/nineoldandroids/animation/ValueAnimator;)J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->y:J

    return-wide v0
.end method

.method private a(Z)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 917
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_11

    .line 918
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_11
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->q:Z

    .line 921
    iput v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->r:I

    .line 922
    iput v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->d:I

    .line 923
    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->w:Z

    .line 924
    iput-boolean v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->t:Z

    .line 925
    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    iget-wide v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->y:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_59

    .line 928
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->g()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->c(J)V

    .line 929
    iput v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->d:I

    .line 930
    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->v:Z

    .line 932
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_59

    .line 933
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 936
    :goto_4a
    if-ge v2, v4, :cond_59

    .line 937
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v1, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->a(Lcom/nineoldandroids/animation/Animator;)V

    .line 936
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4a

    .line 941
    :cond_59
    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    .line 942
    if-nez v0, :cond_6e

    .line 943
    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>(Lcom/nineoldandroids/animation/ValueAnimator$1;)V

    .line 944
    sget-object v1, Lcom/nineoldandroids/animation/ValueAnimator;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 946
    :cond_6e
    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessage(I)Z

    .line 947
    return-void
.end method

.method private a(J)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 1071
    iget-boolean v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->t:Z

    if-nez v1, :cond_b

    .line 1072
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->t:Z

    .line 1073
    iput-wide p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->u:J

    .line 1084
    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 1075
    :cond_b
    iget-wide v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->u:J

    sub-long v2, p1, v2

    .line 1076
    iget-wide v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->y:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    .line 1079
    iget-wide v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->y:J

    sub-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->b:J

    .line 1080
    iput v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->d:I

    goto :goto_a
.end method

.method static synthetic a(Lcom/nineoldandroids/animation/ValueAnimator;J)Z
    .registers 4

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/nineoldandroids/animation/ValueAnimator;->a(J)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/nineoldandroids/animation/ValueAnimator;Z)Z
    .registers 2

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->v:Z

    return p1
.end method

.method public static varargs b([F)Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 2

    .prologue
    .line 315
    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 316
    invoke-virtual {v0, p0}, Lcom/nineoldandroids/animation/ValueAnimator;->a([F)V

    .line 317
    return-object v0
.end method

.method static synthetic b(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->n()V

    return-void
.end method

.method static synthetic c(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->e()V

    return-void
.end method

.method private e()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1025
    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1026
    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1027
    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1028
    iput v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->d:I

    .line 1029
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->v:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_48

    .line 1030
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1032
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 1033
    :goto_39
    if-ge v2, v4, :cond_48

    .line 1034
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v1, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->b(Lcom/nineoldandroids/animation/Animator;)V

    .line 1033
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_39

    .line 1037
    :cond_48
    iput-boolean v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->v:Z

    .line 1038
    iput-boolean v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->w:Z

    .line 1039
    return-void
.end method

.method static synthetic h()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->i:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->k:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->j:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->m:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->l:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic m()J
    .registers 2

    .prologue
    .line 43
    sget-wide v0, Lcom/nineoldandroids/animation/ValueAnimator;->z:J

    return-wide v0
.end method

.method private n()V
    .registers 5

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->d()V

    .line 1047
    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    iget-wide v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_37

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_37

    .line 1051
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1053
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1054
    const/4 v1, 0x0

    move v2, v1

    :goto_28
    if-ge v2, v3, :cond_37

    .line 1055
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v1, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->a(Lcom/nineoldandroids/animation/Animator;)V

    .line 1054
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_28

    .line 1058
    :cond_37
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 951
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->a(Z)V

    .line 952
    return-void
.end method

.method a(F)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1169
    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->C:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 1170
    iput v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->s:F

    .line 1171
    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v3, v1

    move v1, v0

    .line 1172
    :goto_d
    if-ge v1, v3, :cond_19

    .line 1173
    iget-object v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(F)V

    .line 1172
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1175
    :cond_19
    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->D:Ljava/util/ArrayList;

    if-eqz v1, :cond_35

    .line 1176
    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 1177
    :goto_24
    if-ge v1, v2, :cond_35

    .line 1178
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v0, p0}, Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;->a(Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 1177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 1181
    :cond_35
    return-void
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 780
    iput p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->A:I

    .line 781
    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .registers 3

    .prologue
    .line 865
    if-eqz p1, :cond_5

    .line 866
    iput-object p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->C:Landroid/view/animation/Interpolator;

    .line 870
    :goto_4
    return-void

    .line 868
    :cond_5
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->C:Landroid/view/animation/Interpolator;

    goto :goto_4
.end method

.method public a(Lcom/nineoldandroids/animation/TypeEvaluator;)V
    .registers 4

    .prologue
    .line 898
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 899
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 901
    :cond_13
    return-void
.end method

.method public varargs a([F)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 401
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_7

    .line 412
    :cond_6
    :goto_6
    return-void

    .line 404
    :cond_7
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_22

    .line 405
    :cond_10
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    const-string/jumbo v1, ""

    invoke-static {v1, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/String;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->a([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 411
    :goto_1f
    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->e:Z

    goto :goto_6

    .line 407
    :cond_22
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v0, v2

    .line 408
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a([F)V

    goto :goto_1f
.end method

.method public varargs a([I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 373
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_7

    .line 384
    :cond_6
    :goto_6
    return-void

    .line 376
    :cond_7
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_22

    .line 377
    :cond_10
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    const-string/jumbo v1, ""

    invoke-static {v1, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/String;[I)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->a([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 383
    :goto_1f
    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->e:Z

    goto :goto_6

    .line 379
    :cond_22
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v0, v2

    .line 380
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a([I)V

    goto :goto_1f
.end method

.method public varargs a([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 456
    array-length v2, p1

    .line 457
    iput-object p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->g:Ljava/util/HashMap;

    move v0, v1

    .line 459
    :goto_c
    if-ge v0, v2, :cond_1c

    .line 460
    aget-object v3, p1, v0

    .line 461
    iget-object v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 464
    :cond_1c
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->e:Z

    .line 465
    return-void
.end method

.method public b(J)Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 6

    .prologue
    .line 510
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_20

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_20
    iput-wide p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->x:J

    .line 515
    return-object p0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 800
    iput p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->B:I

    .line 801
    return-void
.end method

.method public synthetic c()Lcom/nineoldandroids/animation/Animator;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->f()Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public c(J)V
    .registers 8

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->d()V

    .line 539
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 540
    iget v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    .line 541
    iput-wide p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->c:J

    .line 542
    const/4 v2, 0x2

    iput v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->d:I

    .line 544
    :cond_11
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->b:J

    .line 545
    invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->e(J)Z

    .line 546
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->f()Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .registers 4

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->e:Z

    if-nez v0, :cond_17

    .line 491
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v0

    .line 492
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_14

    .line 493
    iget-object v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->b()V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 495
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->e:Z

    .line 497
    :cond_17
    return-void
.end method

.method public d(J)V
    .registers 4

    .prologue
    .line 702
    iput-wide p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->y:J

    .line 703
    return-void
.end method

.method e(J)Z
    .registers 14

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1100
    .line 1102
    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->d:I

    if-nez v0, :cond_14

    .line 1103
    iput v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->d:I

    .line 1104
    iget-wide v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->c:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_1a

    .line 1105
    iput-wide p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->b:J

    .line 1112
    :cond_14
    :goto_14
    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->d:I

    packed-switch v0, :pswitch_data_92

    .line 1143
    :goto_19
    return v1

    .line 1107
    :cond_1a
    iget-wide v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->c:J

    sub-long v6, p1, v6

    iput-wide v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->b:J

    .line 1109
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->c:J

    goto :goto_14

    .line 1115
    :pswitch_25
    iget-wide v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->x:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_60

    iget-wide v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->b:J

    sub-long v6, p1, v6

    long-to-float v0, v6

    iget-wide v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->x:J

    long-to-float v3, v6

    div-float v3, v0, v3

    .line 1116
    :goto_35
    cmpl-float v0, v3, v5

    if-ltz v0, :cond_8f

    .line 1117
    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->r:I

    iget v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->A:I

    if-lt v0, v4, :cond_44

    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->A:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_89

    .line 1119
    :cond_44
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_62

    .line 1120
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v1

    .line 1121
    :goto_4f
    if-ge v4, v6, :cond_62

    .line 1122
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v0, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->c(Lcom/nineoldandroids/animation/Animator;)V

    .line 1121
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4f

    :cond_60
    move v3, v5

    .line 1115
    goto :goto_35

    .line 1125
    :cond_62
    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->B:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6e

    .line 1126
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->q:Z

    if-eqz v0, :cond_87

    move v0, v1

    :goto_6c
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->q:Z

    .line 1128
    :cond_6e
    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->r:I

    float-to-int v2, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->r:I

    .line 1129
    rem-float v0, v3, v5

    .line 1130
    iget-wide v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->b:J

    iget-wide v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->x:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->b:J

    .line 1136
    :goto_7d
    iget-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->q:Z

    if-eqz v2, :cond_83

    .line 1137
    sub-float v0, v5, v0

    .line 1139
    :cond_83
    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->a(F)V

    goto :goto_19

    :cond_87
    move v0, v2

    .line 1126
    goto :goto_6c

    .line 1133
    :cond_89
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v2

    goto :goto_7d

    :cond_8f
    move v0, v3

    goto :goto_7d

    .line 1112
    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public f()Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1185
    invoke-super {p0}, Lcom/nineoldandroids/animation/Animator;->c()Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 1186
    iget-object v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->D:Ljava/util/ArrayList;

    if-eqz v2, :cond_27

    .line 1187
    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->D:Ljava/util/ArrayList;

    .line 1188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/nineoldandroids/animation/ValueAnimator;->D:Ljava/util/ArrayList;

    .line 1189
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 1190
    :goto_19
    if-ge v2, v4, :cond_27

    .line 1191
    iget-object v5, v0, Lcom/nineoldandroids/animation/ValueAnimator;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1194
    :cond_27
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/nineoldandroids/animation/ValueAnimator;->c:J

    .line 1195
    iput-boolean v1, v0, Lcom/nineoldandroids/animation/ValueAnimator;->q:Z

    .line 1196
    iput v1, v0, Lcom/nineoldandroids/animation/ValueAnimator;->r:I

    .line 1197
    iput-boolean v1, v0, Lcom/nineoldandroids/animation/ValueAnimator;->e:Z

    .line 1198
    iput v1, v0, Lcom/nineoldandroids/animation/ValueAnimator;->d:I

    .line 1199
    iput-boolean v1, v0, Lcom/nineoldandroids/animation/ValueAnimator;->t:Z

    .line 1200
    iget-object v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    .line 1201
    if-eqz v2, :cond_5d

    .line 1202
    array-length v3, v2

    .line 1203
    new-array v4, v3, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    iput-object v4, v0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    .line 1204
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lcom/nineoldandroids/animation/ValueAnimator;->g:Ljava/util/HashMap;

    .line 1205
    :goto_45
    if-ge v1, v3, :cond_5d

    .line 1206
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a()Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1207
    iget-object v5, v0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v4, v5, v1

    .line 1208
    iget-object v5, v0, Lcom/nineoldandroids/animation/ValueAnimator;->g:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 1211
    :cond_5d
    return-object v0
.end method

.method public g()J
    .registers 5

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->e:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->d:I

    if-nez v0, :cond_b

    .line 557
    :cond_8
    const-wide/16 v0, 0x0

    .line 559
    :goto_a
    return-wide v0

    :cond_b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->b:J

    sub-long/2addr v0, v2

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ValueAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1257
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_49

    .line 1258
    const/4 v0, 0x0

    :goto_21
    iget-object v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_49

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->f:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1258
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1262
    :cond_49
    return-object v1
.end method
