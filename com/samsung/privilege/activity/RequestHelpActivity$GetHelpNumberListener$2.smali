.class Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$2;
.super Ljava/lang/Object;
.source "RequestHelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$2;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 511
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$2;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->access$1(Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;)Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-result-object v2

    const v3, 0x7f0c036d

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/RequestHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 512
    .local v0, "layoutHelpCode":Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$2;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->access$1(Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;)Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-result-object v2

    const v3, 0x7f0c036f

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/RequestHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 514
    .local v1, "tvHelpCodeNumber":Landroid/widget/TextView;
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 517
    return-void
.end method
