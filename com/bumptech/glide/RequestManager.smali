.class public Lcom/bumptech/glide/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/LifecycleListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bumptech/glide/manager/Lifecycle;

.field private final c:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.field private final d:Lcom/bumptech/glide/manager/RequestTracker;

.field private final e:Lcom/bumptech/glide/Glide;

.field private final f:Lcom/bumptech/glide/RequestManager$OptionsApplier;

.field private g:Lcom/bumptech/glide/RequestManager$DefaultOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;)V
    .registers 10

    .prologue
    .line 53
    new-instance v4, Lcom/bumptech/glide/manager/RequestTracker;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/RequestTracker;-><init>()V

    new-instance v5, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    invoke-direct {v5}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)V
    .registers 9

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/bumptech/glide/RequestManager;->b:Lcom/bumptech/glide/manager/Lifecycle;

    .line 60
    iput-object p3, p0, Lcom/bumptech/glide/RequestManager;->c:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 61
    iput-object p4, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->e:Lcom/bumptech/glide/Glide;

    .line 63
    new-instance v0, Lcom/bumptech/glide/RequestManager$OptionsApplier;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/RequestManager$OptionsApplier;-><init>(Lcom/bumptech/glide/RequestManager;)V

    iput-object v0, p0, Lcom/bumptech/glide/RequestManager;->f:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    .line 65
    new-instance v0, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;

    invoke-direct {v0, p4}, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;-><init>(Lcom/bumptech/glide/manager/RequestTracker;)V

    invoke-virtual {p5, p1, v0}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;->a(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/bumptech/glide/util/Util;->c()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bumptech/glide/RequestManager$1;

    invoke-direct {v2, p0, p2}, Lcom/bumptech/glide/RequestManager$1;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/manager/Lifecycle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :goto_3c
    invoke-interface {p2, v0}, Lcom/bumptech/glide/manager/Lifecycle;->a(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 82
    return-void

    .line 79
    :cond_40
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/Lifecycle;->a(Lcom/bumptech/glide/manager/LifecycleListener;)V

    goto :goto_3c
.end method

.method static synthetic a(Lcom/bumptech/glide/RequestManager;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/Glide;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v2

    .line 626
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/Glide;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    .line 628
    if-eqz p1, :cond_41

    if-nez v2, :cond_41

    if-nez v3, :cond_41

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". You must provide a Model of a type for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_41
    iget-object v9, p0, Lcom/bumptech/glide/RequestManager;->f:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v0, Lcom/bumptech/glide/DrawableTypeRequest;

    iget-object v4, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/RequestManager;->e:Lcom/bumptech/glide/Glide;

    iget-object v6, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    iget-object v7, p0, Lcom/bumptech/glide/RequestManager;->b:Lcom/bumptech/glide/manager/Lifecycle;

    iget-object v8, p0, Lcom/bumptech/glide/RequestManager;->f:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;Lcom/bumptech/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/RequestManager$OptionsApplier;->a(Lcom/bumptech/glide/GenericRequestBuilder;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 2

    .prologue
    .line 43
    invoke-static {p0}, Lcom/bumptech/glide/RequestManager;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/Glide;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->e:Lcom/bumptech/glide/Glide;

    return-object v0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 641
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static synthetic c(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/RequestTracker;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    return-object v0
.end method

.method static synthetic d(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/manager/Lifecycle;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->b:Lcom/bumptech/glide/manager/Lifecycle;

    return-object v0
.end method

.method static synthetic e(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$OptionsApplier;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->f:Lcom/bumptech/glide/RequestManager$OptionsApplier;

    return-object v0
.end method

.method static synthetic f(Lcom/bumptech/glide/RequestManager;)Lcom/bumptech/glide/RequestManager$DefaultOptions;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->g:Lcom/bumptech/glide/RequestManager$DefaultOptions;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->h()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->i()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->g()Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/bumptech/glide/RequestManager$GenericModelRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/RequestManager$GenericModelRequest",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/RequestManager$GenericModelRequest;-><init>(Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->e:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->e()V

    .line 96
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->e:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->a(I)V

    .line 89
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 147
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->a()V

    .line 149
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 179
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->b()V

    .line 181
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->c()V

    .line 204
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->b()V

    .line 213
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/RequestManager;->d:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestTracker;->c()V

    .line 222
    return-void
.end method

.method public g()Lcom/bumptech/glide/DrawableTypeRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/DrawableTypeRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    const-class v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/bumptech/glide/DrawableTypeRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableTypeRequest",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/Class;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->a(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method
