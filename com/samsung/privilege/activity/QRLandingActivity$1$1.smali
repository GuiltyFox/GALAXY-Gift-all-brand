.class Lcom/samsung/privilege/activity/QRLandingActivity$1$1;
.super Ljava/lang/Object;
.source "QRLandingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/QRLandingActivity$1;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/QRLandingActivity$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/QRLandingActivity$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$1;->b:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$1;->b:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    return-void
.end method
