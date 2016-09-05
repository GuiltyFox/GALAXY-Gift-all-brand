.class public Landroid/support/v4/app/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final a:Landroid/support/v4/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/FragmentHostCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentHostCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    .line 53
    return-void
.end method

.method public static final a(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/FragmentController;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentHostCallback",
            "<*>;)",
            "Landroid/support/v4/app/FragmentController;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Landroid/support/v4/app/FragmentController;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentController;-><init>(Landroid/support/v4/app/FragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/support/v4/app/FragmentManager;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->k()Landroid/support/v4/app/FragmentManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/content/res/Configuration;)V

    .line 256
    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 145
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .registers 5

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v2, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V

    .line 106
    return-void
.end method

.method public a(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->a(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 397
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentHostCallback;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->a(Z)V

    .line 358
    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 4

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v4/app/LoaderManager;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->l()Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/Menu;)V
    .registers 3

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/view/Menu;)V

    .line 329
    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->k()V

    .line 128
    return-void
.end method

.method public d()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->j()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->i()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->l()V

    .line 164
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->m()V

    .line 175
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->n()V

    .line 186
    return-void
.end method

.method public i()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->o()V

    .line 197
    return-void
.end method

.method public j()V
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->p()V

    .line 208
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->q()V

    .line 219
    return-void
.end method

.method public l()V
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->r()V

    .line 223
    return-void
.end method

.method public m()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->t()V

    .line 245
    return-void
.end method

.method public n()V
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->u()V

    .line 268
    return-void
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->g()Z

    move-result v0

    return v0
.end method

.method public p()V
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->n()V

    .line 347
    return-void
.end method

.method public q()V
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->o()V

    .line 372
    return-void
.end method

.method public r()V
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->p()V

    .line 379
    return-void
.end method

.method public s()Landroid/support/v4/util/SimpleArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Landroid/support/v4/app/FragmentController;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->q()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    return-object v0
.end method
