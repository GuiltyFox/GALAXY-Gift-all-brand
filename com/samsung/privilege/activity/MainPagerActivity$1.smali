.class Lcom/samsung/privilege/activity/MainPagerActivity$1;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/MessageGCM;

.field final synthetic b:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/MessageGCM;)V
    .registers 3

    .prologue
    .line 190
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "ewallet_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "ewallet_refund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 193
    :cond_27
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->O(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 194
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v1, v1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    :cond_45
    :goto_45
    return-void

    .line 195
    :cond_46
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "message_beacon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 196
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    const-string/jumbo v1, "Power Buy"

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v2, v2, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45
.end method
