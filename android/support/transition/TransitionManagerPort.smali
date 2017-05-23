.class Landroid/support/transition/TransitionManagerPort;
.super Ljava/lang/Object;
.source "TransitionManagerPort.java"


# static fields
.field static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Landroid/support/transition/TransitionPort;

.field private static e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionPort;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->b:[Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "TransitionManager"

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->c:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/support/transition/AutoTransitionPort;

    invoke-direct {v0}, Landroid/support/transition/AutoTransitionPort;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->d:Landroid/support/transition/TransitionPort;

    .line 42
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->e:Ljava/lang/ThreadLocal;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionManagerPort;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static a()Landroid/support/v4/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionPort;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 114
    sget-object v0, Landroid/support/transition/TransitionManagerPort;->e:Ljava/lang/ThreadLocal;

    .line 115
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 116
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 117
    :cond_10
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 119
    sget-object v1, Landroid/support/transition/TransitionManagerPort;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 121
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V
    .registers 4

    .prologue
    .line 169
    sget-object v0, Landroid/support/transition/TransitionManagerPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->E(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 174
    sget-object v0, Landroid/support/transition/TransitionManagerPort;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    if-nez p1, :cond_17

    .line 176
    sget-object p1, Landroid/support/transition/TransitionManagerPort;->d:Landroid/support/transition/TransitionPort;

    .line 178
    :cond_17
    invoke-virtual {p1}, Landroid/support/transition/TransitionPort;->j()Landroid/support/transition/TransitionPort;

    move-result-object v0

    .line 179
    invoke-static {p0, v0}, Landroid/support/transition/TransitionManagerPort;->c(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V

    .line 180
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/transition/ScenePort;->a(Landroid/view/View;Landroid/support/transition/ScenePort;)V

    .line 181
    invoke-static {p0, v0}, Landroid/support/transition/TransitionManagerPort;->b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V

    .line 183
    :cond_25
    return-void
.end method

.method private static b(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V
    .registers 4

    .prologue
    .line 126
    if-eqz p1, :cond_13

    if-eqz p0, :cond_13

    .line 127
    new-instance v0, Landroid/support/transition/TransitionManagerPort$MultiListener;

    invoke-direct {v0, p1, p0}, Landroid/support/transition/TransitionManagerPort$MultiListener;-><init>(Landroid/support/transition/TransitionPort;Landroid/view/ViewGroup;)V

    .line 128
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 129
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 131
    :cond_13
    return-void
.end method

.method private static c(Landroid/view/ViewGroup;Landroid/support/transition/TransitionPort;)V
    .registers 4

    .prologue
    .line 136
    invoke-static {}, Landroid/support/transition/TransitionManagerPort;->a()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 138
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 140
    invoke-virtual {v0, p0}, Landroid/support/transition/TransitionPort;->c(Landroid/view/View;)V

    goto :goto_16

    .line 144
    :cond_26
    if-eqz p1, :cond_2c

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/support/transition/TransitionPort;->a(Landroid/view/ViewGroup;Z)V

    .line 149
    :cond_2c
    invoke-static {p0}, Landroid/support/transition/ScenePort;->a(Landroid/view/View;)Landroid/support/transition/ScenePort;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_35

    .line 151
    invoke-virtual {v0}, Landroid/support/transition/ScenePort;->a()V

    .line 153
    :cond_35
    return-void
.end method
