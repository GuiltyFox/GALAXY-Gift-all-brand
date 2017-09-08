.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V
    .registers 2

    .prologue
    .line 405
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Lcom/bzbs/marketplace/base/BaseAppCompatActivity$1;)V
    .registers 3

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 437
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->b(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$4;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$4;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 408
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->b(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$1;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 417
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->b(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$2;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$2;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 427
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->b(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$3;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$3;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method
