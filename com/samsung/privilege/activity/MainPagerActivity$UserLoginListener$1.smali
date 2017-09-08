.class Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->c:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->c:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g(Lcom/samsung/privilege/activity/MainPagerActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4f

    .line 1533
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->c:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1534
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1535
    const-string/jumbo v0, "action"

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1536
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->a:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->a:Ljava/lang/String;

    const-string/jumbo v2, "dashboard_click"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1537
    const-string/jumbo v2, "action_ref_object"

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1539
    :cond_40
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->c:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1541
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->c:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    .line 1545
    :goto_4e
    return-void

    .line 1543
    :cond_4f
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->c:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4e
.end method
