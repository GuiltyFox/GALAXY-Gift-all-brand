.class abstract Lcom/squareup/picasso/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/squareup/picasso/Picasso;

.field final b:Lcom/squareup/picasso/Request;

.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:I

.field final f:I

.field final g:I

.field final h:Landroid/graphics/drawable/Drawable;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/Object;

.field k:Z

.field l:Z


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/picasso/Picasso;",
            "TT;",
            "Lcom/squareup/picasso/Request;",
            "III",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/squareup/picasso/Action;->a:Lcom/squareup/picasso/Picasso;

    .line 52
    iput-object p3, p0, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    .line 53
    if-nez p2, :cond_1d

    const/4 v0, 0x0

    :goto_a
    iput-object v0, p0, Lcom/squareup/picasso/Action;->c:Ljava/lang/ref/WeakReference;

    .line 55
    iput p4, p0, Lcom/squareup/picasso/Action;->e:I

    .line 56
    iput p5, p0, Lcom/squareup/picasso/Action;->f:I

    .line 57
    iput-boolean p10, p0, Lcom/squareup/picasso/Action;->d:Z

    .line 58
    iput p6, p0, Lcom/squareup/picasso/Action;->g:I

    .line 59
    iput-object p7, p0, Lcom/squareup/picasso/Action;->h:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object p8, p0, Lcom/squareup/picasso/Action;->i:Ljava/lang/String;

    .line 61
    if-eqz p9, :cond_25

    :goto_1a
    iput-object p9, p0, Lcom/squareup/picasso/Action;->j:Ljava/lang/Object;

    .line 62
    return-void

    .line 53
    :cond_1d
    new-instance v0, Lcom/squareup/picasso/Action$RequestWeakReference;

    iget-object v1, p1, Lcom/squareup/picasso/Picasso;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p2, v1}, Lcom/squareup/picasso/Action$RequestWeakReference;-><init>(Lcom/squareup/picasso/Action;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    goto :goto_a

    :cond_25
    move-object p9, p0

    .line 61
    goto :goto_1a
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
.end method

.method b()V
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/Action;->l:Z

    .line 70
    return-void
.end method

.method c()Lcom/squareup/picasso/Request;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/squareup/picasso/Action;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/squareup/picasso/Action;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/squareup/picasso/Action;->i:Ljava/lang/String;

    return-object v0
.end method

.method f()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/squareup/picasso/Action;->l:Z

    return v0
.end method

.method g()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/squareup/picasso/Action;->k:Z

    return v0
.end method

.method h()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/squareup/picasso/Action;->e:I

    return v0
.end method

.method i()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/squareup/picasso/Action;->f:I

    return v0
.end method

.method j()Lcom/squareup/picasso/Picasso;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/squareup/picasso/Action;->a:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method k()Lcom/squareup/picasso/Picasso$Priority;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/squareup/picasso/Action;->b:Lcom/squareup/picasso/Request;

    iget-object v0, v0, Lcom/squareup/picasso/Request;->r:Lcom/squareup/picasso/Picasso$Priority;

    return-object v0
.end method

.method l()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/squareup/picasso/Action;->j:Ljava/lang/Object;

    return-object v0
.end method
