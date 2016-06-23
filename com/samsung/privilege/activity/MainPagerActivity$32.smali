.class Lcom/samsung/privilege/activity/MainPagerActivity$32;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogSignOut(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

.field final synthetic val$dialogSerial:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$32;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$32;->val$dialogSerial:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$32;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2017
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$32;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->Logout(Landroid/content/Context;Z)V

    .line 2019
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$32;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    .line 2020
    return-void
.end method
