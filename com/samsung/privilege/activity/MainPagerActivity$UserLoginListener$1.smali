.class Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g(Lcom/samsung/privilege/activity/MainPagerActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    .line 1497
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1498
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1499
    const-string/jumbo v1, "action"

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1502
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    .line 1506
    :goto_35
    return-void

    .line 1504
    :cond_36
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;)V

    goto :goto_35
.end method
