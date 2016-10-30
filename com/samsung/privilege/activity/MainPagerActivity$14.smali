.class Lcom/samsung/privilege/activity/MainPagerActivity$14;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->b(Landroid/content/Context;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/widget/RelativeLayout;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/RelativeLayout;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$14;->d:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$14;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$14;->b:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$14;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$14;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1031
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$14;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$14$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$14$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$14;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1037
    return-void
.end method
