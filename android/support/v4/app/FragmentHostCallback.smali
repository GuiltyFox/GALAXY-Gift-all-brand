.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field final b:Landroid/content/Context;

.field final c:I

.field final d:Landroid/support/v4/app/FragmentManagerImpl;

.field private final e:Landroid/os/Handler;

.field private f:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Landroid/support/v4/app/LoaderManagerImpl;

.field private i:Z

.field private j:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    .line 45
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    .line 66
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/app/Activity;

    .line 67
    iput-object p2, p0, Landroid/support/v4/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Landroid/support/v4/app/FragmentHostCallback;->e:Landroid/os/Handler;

    .line 69
    iput p4, p0, Landroid/support/v4/app/FragmentHostCallback;->c:I

    .line 70
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4

    .prologue
    .line 61
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 62
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .registers 6

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_b

    .line 288
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    .line 290
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 291
    if-nez v0, :cond_22

    .line 292
    if-eqz p3, :cond_21

    .line 293
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V

    .line 294
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_21
    :goto_21
    return-object v0

    .line 297
    :cond_22
    invoke-virtual {v0, p0}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/FragmentHostCallback;)V

    goto :goto_21
.end method

.method public a(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 128
    const/4 v0, -0x1

    if-eq p3, v0, :cond_c

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->b:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 141
    return-void
.end method

.method a(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 2
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
    .line 330
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    .line 331
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 82
    return-void
.end method

.method a(Z)V
    .registers 3

    .prologue
    .line 239
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentHostCallback;->g:Z

    .line 241
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_7

    .line 255
    :cond_6
    :goto_6
    return-void

    .line 245
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    if-eqz v0, :cond_6

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    .line 250
    if-eqz p1, :cond_16

    .line 251
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->d()V

    goto :goto_6

    .line 253
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->c()V

    goto :goto_6
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .registers 3

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/view/LayoutInflater;
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->b:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method b(Landroid/support/v4/app/Fragment;)V
    .registers 2

    .prologue
    .line 213
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_1a

    .line 204
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 205
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    if-nez v1, :cond_1a

    .line 206
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->h()V

    .line 207
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_1a
    return-void
.end method

.method b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 334
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 336
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_47

    .line 337
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 342
    :cond_47
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 112
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Landroid/support/v4/app/FragmentHostCallback;->c:I

    return v0
.end method

.method public abstract g()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method h()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/app/Activity;

    return-object v0
.end method

.method i()Landroid/content/Context;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->b:Landroid/content/Context;

    return-object v0
.end method

.method j()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->e:Landroid/os/Handler;

    return-object v0
.end method

.method k()Landroid/support/v4/app/FragmentManagerImpl;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method l()Landroid/support/v4/app/LoaderManagerImpl;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 193
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_8

    .line 194
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    .line 198
    :goto_7
    return-object v0

    .line 196
    :cond_8
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentHostCallback;->i:Z

    .line 197
    const-string/jumbo v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentHostCallback;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    .line 198
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    goto :goto_7
.end method

.method m()Z
    .registers 2

    .prologue
    .line 216
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->g:Z

    return v0
.end method

.method n()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 220
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    if-eqz v0, :cond_6

    .line 235
    :goto_5
    return-void

    .line 223
    :cond_6
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    .line 225
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_14

    .line 226
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->b()V

    .line 234
    :cond_11
    :goto_11
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentHostCallback;->i:Z

    goto :goto_5

    .line 227
    :cond_14
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->i:Z

    if-nez v0, :cond_11

    .line 228
    const-string/jumbo v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentHostCallback;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    .line 230
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    iget-boolean v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    if-nez v0, :cond_11

    .line 231
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->b()V

    goto :goto_11
.end method

.method o()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 269
    :goto_4
    return-void

    .line 268
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->h()V

    goto :goto_4
.end method

.method p()V
    .registers 5

    .prologue
    .line 272
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_2d

    .line 273
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v2

    .line 274
    new-array v3, v2, [Landroid/support/v4/app/LoaderManagerImpl;

    .line 275
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_1f

    .line 276
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v0, v3, v1

    .line 275
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 278
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-ge v0, v2, :cond_2d

    .line 279
    aget-object v1, v3, v0

    .line 280
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->e()V

    .line 281
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->g()V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 284
    :cond_2d
    return-void
.end method

.method q()Landroid/support/v4/util/SimpleArrayMap;
    .registers 7
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
    const/4 v1, 0x0

    .line 303
    .line 304
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_38

    .line 307
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    .line 308
    new-array v4, v3, [Landroid/support/v4/app/LoaderManagerImpl;

    .line 309
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_10
    if-ltz v2, :cond_20

    .line 310
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v0, v4, v2

    .line 309
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_10

    :cond_20
    move v0, v1

    .line 312
    :goto_21
    if-ge v1, v3, :cond_39

    .line 313
    aget-object v2, v4, v1

    .line 314
    iget-boolean v5, v2, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    if-eqz v5, :cond_2d

    .line 315
    const/4 v0, 0x1

    .line 312
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 317
    :cond_2d
    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->h()V

    .line 318
    iget-object v5, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_38
    move v0, v1

    .line 323
    :cond_39
    if-eqz v0, :cond_3e

    .line 324
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    .line 326
    :goto_3d
    return-object v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method
