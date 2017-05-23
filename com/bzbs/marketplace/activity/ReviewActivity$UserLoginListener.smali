.class Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;
.super Ljava/lang/Object;
.source "ReviewActivity.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/activity/ReviewActivity;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/activity/ReviewActivity;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/activity/ReviewActivity;Lcom/bzbs/marketplace/activity/ReviewActivity$1;)V
    .registers 3

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;-><init>(Lcom/bzbs/marketplace/activity/ReviewActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/ReviewActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$1;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$1;-><init>(Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/ReviewActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;-><init>(Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 203
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 208
    return-void
.end method
