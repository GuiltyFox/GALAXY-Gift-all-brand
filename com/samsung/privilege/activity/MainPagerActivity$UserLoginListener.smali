.class Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V
    .registers 3

    .prologue
    .line 1399
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1417
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$2;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1436
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1441
    return-void
.end method
