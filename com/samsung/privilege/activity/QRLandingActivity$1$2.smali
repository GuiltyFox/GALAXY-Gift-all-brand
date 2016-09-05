.class Lcom/samsung/privilege/activity/QRLandingActivity$1$2;
.super Ljava/lang/Object;
.source "QRLandingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/QRLandingActivity$1;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/QRLandingActivity$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/QRLandingActivity$1;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$2;->a:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$2;->a:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    iget-object v1, v0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$2;->a:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->b(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$2;->a:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/QRLandingActivity;->b(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    .line 186
    return-void
.end method
