.class public Lcom/bumptech/glide/request/animation/NoAnimation$NoAnimationFactory;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
        "<TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->c()Lcom/bumptech/glide/request/animation/NoAnimation;

    move-result-object v0

    return-object v0
.end method
