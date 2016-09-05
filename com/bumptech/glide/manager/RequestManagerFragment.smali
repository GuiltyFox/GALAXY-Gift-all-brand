.class public Lcom/bumptech/glide/manager/RequestManagerFragment;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

.field private final b:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.field private c:Lcom/bumptech/glide/RequestManager;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bumptech/glide/manager/RequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    new-instance v0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 27
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;-><init>(Lcom/bumptech/glide/manager/RequestManagerFragment;Lcom/bumptech/glide/manager/RequestManagerFragment$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->b:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->d:Ljava/util/HashSet;

    .line 40
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    .line 41
    return-void
.end method

.method private a(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method private b(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/RequestManager;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/RequestManager;

    .line 50
    return-void
.end method

.method public b()Lcom/bumptech/glide/RequestManager;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->b:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 117
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->a(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->e:Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->e:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-eq v0, p0, :cond_1e

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->e:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->a(Lcom/bumptech/glide/manager/RequestManagerFragment;)V

    .line 122
    :cond_1e
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->c()V

    .line 149
    return-void
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->e:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-eqz v0, :cond_f

    .line 128
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->e:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->b(Lcom/bumptech/glide/manager/RequestManagerFragment;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->e:Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 131
    :cond_f
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/RequestManager;

    if-eqz v0, :cond_9

    .line 165
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->a()V

    .line 167
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 136
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->a()V

    .line 137
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 142
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->a:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->b()V

    .line 143
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/RequestManager;

    if-eqz v0, :cond_9

    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->c:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->a(I)V

    .line 158
    :cond_9
    return-void
.end method
