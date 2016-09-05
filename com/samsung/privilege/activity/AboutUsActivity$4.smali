.class Lcom/samsung/privilege/activity/AboutUsActivity$4;
.super Ljava/lang/Object;
.source "AboutUsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AboutUsActivity;->doAdminCampaign(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/AboutUsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AboutUsActivity;)V
    .registers 2

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/privilege/activity/AboutUsActivity$4;->a:Lcom/samsung/privilege/activity/AboutUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 215
    return-void
.end method
