.class Lcom/samsung/privilege/activity/QRLandingActivity$1$3;
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
    .line 189
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$3;->a:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$3;->a:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$3;->a:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->c(Lcom/samsung/privilege/activity/QRLandingActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$3;->a:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$3;->a:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->c(Lcom/samsung/privilege/activity/QRLandingActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->openContextMenu(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$3;->a:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity$1$3;->a:Lcom/samsung/privilege/activity/QRLandingActivity$1;

    iget-object v1, v1, Lcom/samsung/privilege/activity/QRLandingActivity$1;->a:Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->c(Lcom/samsung/privilege/activity/QRLandingActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 194
    return-void
.end method
