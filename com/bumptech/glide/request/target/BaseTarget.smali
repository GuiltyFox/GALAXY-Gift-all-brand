.class public abstract Lcom/bumptech/glide/request/target/BaseTarget;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/request/Request;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/request/target/BaseTarget;->a:Lcom/bumptech/glide/request/Request;

    .line 35
    return-void
.end method

.method public a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 67
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 51
    return-void
.end method

.method public c()Lcom/bumptech/glide/request/Request;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/request/target/BaseTarget;->a:Lcom/bumptech/glide/request/Request;

    return-object v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 59
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method
