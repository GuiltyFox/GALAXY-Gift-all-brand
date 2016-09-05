.class Lcom/samsung/privilege/activity/MainPagerActivity$7$2;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity$7;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity$7;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity$7;)V
    .registers 2

    .prologue
    .line 682
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$2;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 684
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$2;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    iget-object v1, v0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$2;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$2;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    iget-object v2, v2, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    .line 685
    return-void
.end method
