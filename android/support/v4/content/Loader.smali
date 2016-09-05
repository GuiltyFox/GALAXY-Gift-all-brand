.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:I

.field b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field c:Landroid/support/v4/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCanceledListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 498
    invoke-static {p1, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 499
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    .line 270
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->f:Z

    .line 271
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->e:Z

    .line 272
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->b()V

    .line 273
    return-void
.end method

.method public a(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_d

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_d
    iput-object p2, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 168
    iput p1, p0, Landroid/support/v4/content/Loader;->a:I

    .line 169
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_d

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_d
    iput-object p1, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    .line 200
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_d

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_d
    iget-object v0, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eq v0, p1, :cond_1a

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 184
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 522
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/content/Loader;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 523
    const-string/jumbo v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/Loader;->b:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 524
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->g:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->h:Z

    if-eqz v0, :cond_49

    .line 525
    :cond_25
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 526
    const-string/jumbo v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->g:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 527
    const-string/jumbo v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 529
    :cond_49
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->e:Z

    if-nez v0, :cond_51

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->f:Z

    if-eqz v0, :cond_6a

    .line 530
    :cond_51
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 531
    const-string/jumbo v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 533
    :cond_6a
    return-void
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 281
    return-void
.end method

.method public b(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    if-nez v0, :cond_d

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_d
    iget-object v0, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    if-eq v0, p1, :cond_1a

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCanceledListener;

    .line 218
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    .line 361
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->d()V

    .line 362
    return-void
.end method

.method protected d()V
    .registers 1

    .prologue
    .line 371
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->f()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->f:Z

    .line 422
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->d:Z

    .line 423
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->e:Z

    .line 424
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->g:Z

    .line 425
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->h:Z

    .line 426
    return-void
.end method

.method protected f()V
    .registers 1

    .prologue
    .line 435
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 506
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 507
    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget v1, p0, Landroid/support/v4/content/Loader;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
