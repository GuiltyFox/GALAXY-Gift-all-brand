.class Lcom/samsung/privilege/activity/MainPagerActivity$13;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 998
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$13;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$13;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$13;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1002
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$13;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    .line 1003
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$13;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g()V

    .line 1004
    return-void
.end method
