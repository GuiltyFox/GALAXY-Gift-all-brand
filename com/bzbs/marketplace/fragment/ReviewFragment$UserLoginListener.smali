.class Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/ReviewFragment;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 2

    .prologue
    .line 521
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;Lcom/bzbs/marketplace/fragment/ReviewFragment$1;)V
    .registers 3

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 524
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->n(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener$1;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener$1;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 536
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 540
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->o(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener$2;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener$2;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 558
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 563
    return-void
.end method
