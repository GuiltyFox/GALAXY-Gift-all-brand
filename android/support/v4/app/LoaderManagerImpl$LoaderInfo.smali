.class final Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCanceledListener;
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/Loader$OnLoadCanceledListener",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

.field final synthetic o:Landroid/support/v4/app/LoaderManagerImpl;


# virtual methods
.method a()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 242
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->i:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->j:Z

    if-eqz v0, :cond_c

    .line 246
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    .line 275
    :cond_b
    :goto_b
    return-void

    .line 250
    :cond_c
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    if-nez v0, :cond_b

    .line 255
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    .line 257
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_30

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_30
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    if-nez v0, :cond_44

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_44

    .line 259
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a:I

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->a(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    .line 261
    :cond_44
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_b

    .line 262
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_80

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_80
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    if-nez v0, :cond_92

    .line 269
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/Loader;->a(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 270
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->a(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V

    .line 271
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    .line 273
    :cond_92
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->a()V

    goto/16 :goto_b
.end method

.method a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_6c

    .line 468
    const/4 v0, 0x0

    .line 469
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    if-eqz v1, :cond_81

    .line 470
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    .line 471
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    const-string/jumbo v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    move-object v1, v0

    .line 474
    :goto_25
    :try_start_25
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_52

    const-string/jumbo v0, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/support/v4/content/Loader;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_52
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_25 .. :try_end_57} :catchall_6d

    .line 478
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 479
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    .line 482
    :cond_69
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->f:Z

    .line 484
    :cond_6c
    return-void

    .line 478
    :catchall_6d
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 479
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, v2, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    :cond_80
    throw v0

    :cond_81
    move-object v1, v0

    goto :goto_25
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 500
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 501
    const-string/jumbo v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_52

    .line 505
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/Loader;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 507
    :cond_52
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->e:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->f:Z

    if-eqz v0, :cond_81

    .line 508
    :cond_5a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 509
    const-string/jumbo v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 510
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 512
    :cond_81
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 513
    const-string/jumbo v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 514
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 515
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 516
    const-string/jumbo v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 517
    const-string/jumbo v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 518
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->n:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_fa

    .line 519
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->n:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->n:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 523
    :cond_fa
    return-void
.end method

.method b()V
    .registers 4

    .prologue
    .line 278
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->i:Z

    .line 280
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->j:Z

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 283
    return-void
.end method

.method c()V
    .registers 4

    .prologue
    .line 286
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->i:Z

    if-eqz v0, :cond_32

    .line 287
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Finished Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->i:Z

    .line 289
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->j:Z

    if-eq v0, v1, :cond_32

    .line 290
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    if-nez v0, :cond_32

    .line 294
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->e()V

    .line 299
    :cond_32
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->e:Z

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->k:Z

    if-nez v0, :cond_45

    .line 306
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 308
    :cond_45
    return-void
.end method

.method d()V
    .registers 3

    .prologue
    .line 311
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    if-eqz v0, :cond_16

    .line 312
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->k:Z

    if-eqz v0, :cond_16

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->k:Z

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->e:Z

    if-eqz v0, :cond_16

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 319
    :cond_16
    return-void
.end method

.method e()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 322
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1f
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    .line 324
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->i:Z

    if-nez v0, :cond_3e

    .line 325
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    if-eqz v0, :cond_3e

    .line 327
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    .line 328
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->a(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 329
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->b(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V

    .line 330
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->c()V

    .line 333
    :cond_3e
    return-void
.end method

.method f()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 345
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Destroying: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->l:Z

    .line 347
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->f:Z

    .line 348
    iput-boolean v4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->f:Z

    .line 349
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    if-eqz v1, :cond_8c

    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->e:Z

    if-eqz v1, :cond_8c

    if-eqz v0, :cond_8c

    .line 350
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_53

    const-string/jumbo v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Reseting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_53
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 353
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    .line 354
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v1}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    const-string/jumbo v3, "onLoaderReset"

    iput-object v3, v1, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    move-object v1, v0

    .line 357
    :goto_73
    :try_start_73
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-interface {v0, v3}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->a(Landroid/support/v4/content/Loader;)V
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_b5

    .line 359
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 360
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    .line 364
    :cond_8c
    iput-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 365
    iput-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Ljava/lang/Object;

    .line 366
    iput-boolean v4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->e:Z

    .line 367
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_ab

    .line 368
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    if-eqz v0, :cond_a6

    .line 369
    iput-boolean v4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    .line 370
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->a(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 371
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->b(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V

    .line 373
    :cond_a6
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->e()V

    .line 375
    :cond_ab
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->n:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_b4

    .line 376
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->n:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->f()V

    .line 378
    :cond_b4
    return-void

    .line 359
    :catchall_b5
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    if-eqz v2, :cond_c8

    .line 360
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->o:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, v2, Landroid/support/v4/app/FragmentManagerImpl;->v:Ljava/lang/String;

    :cond_c8
    throw v0

    :cond_c9
    move-object v1, v2

    goto :goto_73
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 489
    const-string/jumbo v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Landroid/support/v4/content/Loader;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 495
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
