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
    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    .line 46
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    .line 67
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Landroid/support/v4/app/FragmentHostCallback;->b:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Landroid/support/v4/app/FragmentHostCallback;->e:Landroid/os/Handler;

    .line 70
    iput p4, p0, Landroid/support/v4/app/FragmentHostCallback;->c:I

    .line 71
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 63
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .registers 6

    .prologue
    .line 303
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_b

    .line 304
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    .line 306
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 307
    if-nez v0, :cond_22

    .line 308
    if-eqz p3, :cond_21

    .line 309
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V

    .line 310
    iget-object v1, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_21
    :goto_21
    return-object v0

    .line 313
    :cond_22
    invoke-virtual {v0, p0}, Landroid/support/v4/app/LoaderManagerImpl;->a(Landroid/support/v4/app/FragmentHostCallback;)V

    goto :goto_21
.end method

.method public a(I)Landroid/view/View;
    .registers 3

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 129
    const/4 v0, -0x1

    if-eq p3, v0, :cond_c

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->b:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17

    .prologue
    .line 143
    const/4 v0, -0x1

    if-eq p3, v0, :cond_c

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/app/Activity;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/ActivityCompat;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 157
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
    .line 353
    iput-object p1, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    .line 354
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 83
    return-void
.end method

.method a(Z)V
    .registers 3

    .prologue
    .line 255
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentHostCallback;->g:Z

    .line 257
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_7

    .line 271
    :cond_6
    :goto_6
    return-void

    .line 261
    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    if-eqz v0, :cond_6

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    .line 266
    if-eqz p1, :cond_16

    .line 267
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->d()V

    goto :goto_6

    .line 269
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->c()V

    goto :goto_6
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .registers 3

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/view/LayoutInflater;
    .registers 3

    .prologue
    .line 97
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
    .line 229
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_1a

    .line 220
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    .line 221
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    if-nez v1, :cond_1a

    .line 222
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->h()V

    .line 223
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_1a
    return-void
.end method

.method b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 357
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 359
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_47

    .line 360
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
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

    .line 365
    :cond_47
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 178
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
    .line 193
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/app/Activity;

    return-object v0
.end method

.method i()Landroid/content/Context;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->b:Landroid/content/Context;

    return-object v0
.end method

.method j()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->e:Landroid/os/Handler;

    return-object v0
.end method

.method k()Landroid/support/v4/app/FragmentManagerImpl;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->d:Landroid/support/v4/app/FragmentManagerImpl;

    return-object v0
.end method

.method l()Landroid/support/v4/app/LoaderManagerImpl;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 209
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_8

    .line 210
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    .line 214
    :goto_7
    return-object v0

    .line 212
    :cond_8
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentHostCallback;->i:Z

    .line 213
    const-string/jumbo v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentHostCallback;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    .line 214
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    goto :goto_7
.end method

.method m()Z
    .registers 2

    .prologue
    .line 232
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->g:Z

    return v0
.end method

.method n()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 236
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    if-eqz v0, :cond_6

    .line 251
    :goto_5
    return-void

    .line 239
    :cond_6
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    .line 241
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_14

    .line 242
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->b()V

    .line 250
    :cond_11
    :goto_11
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentHostCallback;->i:Z

    goto :goto_5

    .line 243
    :cond_14
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentHostCallback;->i:Z

    if-nez v0, :cond_11

    .line 244
    const-string/jumbo v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentHostCallback;->j:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentHostCallback;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    .line 246
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    iget-boolean v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    if-nez v0, :cond_11

    .line 247
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->b()V

    goto :goto_11
.end method

.method o()V
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v0, :cond_5

    .line 285
    :goto_4
    return-void

    .line 284
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->h:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->h()V

    goto :goto_4
.end method

.method p()V
    .registers 5

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_2d

    .line 289
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v2

    .line 290
    new-array v3, v2, [Landroid/support/v4/app/LoaderManagerImpl;

    .line 291
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_1f

    .line 292
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v0, v3, v1

    .line 291
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 294
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-ge v0, v2, :cond_2d

    .line 295
    aget-object v1, v3, v0

    .line 296
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->e()V

    .line 297
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->g()V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 300
    :cond_2d
    return-void
.end method

.method q()Landroid/support/v4/util/SimpleArrayMap;
    .registers 8
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

    .line 319
    .line 320
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_4c

    .line 323
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    .line 324
    new-array v4, v3, [Landroid/support/v4/app/LoaderManagerImpl;

    .line 325
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_10
    if-ltz v2, :cond_20

    .line 326
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v0, v4, v2

    .line 325
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_10

    .line 328
    :cond_20
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->m()Z

    move-result v2

    move v0, v1

    .line 329
    :goto_25
    if-ge v1, v3, :cond_4d

    .line 330
    aget-object v5, v4, v1

    .line 331
    iget-boolean v6, v5, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    if-nez v6, :cond_39

    if-eqz v2, :cond_39

    .line 332
    iget-boolean v6, v5, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    if-nez v6, :cond_36

    .line 333
    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->b()V

    .line 335
    :cond_36
    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->d()V

    .line 337
    :cond_39
    iget-boolean v6, v5, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    if-eqz v6, :cond_41

    .line 338
    const/4 v0, 0x1

    .line 329
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 340
    :cond_41
    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->h()V

    .line 341
    iget-object v6, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v5, v5, Landroid/support/v4/app/LoaderManagerImpl;->d:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :cond_4c
    move v0, v1

    .line 346
    :cond_4d
    if-eqz v0, :cond_52

    .line 347
    iget-object v0, p0, Landroid/support/v4/app/FragmentHostCallback;->f:Landroid/support/v4/util/SimpleArrayMap;

    .line 349
    :goto_51
    return-object v0

    :cond_52
    const/4 v0, 0x0

    goto :goto_51
.end method
