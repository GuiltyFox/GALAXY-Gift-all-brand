.class public Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/ViewAnimationFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    .line 34
    new-instance v0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    new-instance v1, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewAnimationFactory",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->a:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    .line 47
    iput p2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->b:I

    .line 48
    return-void
.end method

.method private a()Lcom/bumptech/glide/request/animation/GlideAnimation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->c:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    if-nez v0, :cond_15

    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->a:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->a(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    iget v2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->b:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V

    iput-object v1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->c:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    .line 67
    :cond_15
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->c:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    return-object v0
.end method

.method private b()Lcom/bumptech/glide/request/animation/GlideAnimation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->d:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    if-nez v0, :cond_14

    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->a:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->a(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    iget v2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->b:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V

    iput-object v1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->d:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    .line 76
    :cond_14
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->d:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    return-object v0
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    if-eqz p1, :cond_7

    .line 53
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->b()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 57
    :goto_6
    return-object v0

    .line 54
    :cond_7
    if-eqz p2, :cond_e

    .line 55
    invoke-direct {p0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->a()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    goto :goto_6

    .line 57
    :cond_e
    invoke-direct {p0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->b()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    goto :goto_6
.end method
