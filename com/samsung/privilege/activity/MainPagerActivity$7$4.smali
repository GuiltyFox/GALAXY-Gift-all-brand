.class Lcom/samsung/privilege/activity/MainPagerActivity$7$4;
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
    .line 699
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$4;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 701
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$4;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_35

    .line 702
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$4;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    iget-object v2, v0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$4;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_action:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$7$4;->a:Lcom/samsung/privilege/activity/MainPagerActivity$7;

    iget-object v3, v3, Lcom/samsung/privilege/activity/MainPagerActivity$7;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    .line 701
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 704
    :cond_35
    return-void
.end method
