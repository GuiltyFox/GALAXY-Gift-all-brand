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

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Z

.field final synthetic e:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V
    .registers 6

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$13;->e:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$13;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$13;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$13;->c:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$13;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$13;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1166
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$13;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$13$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$13$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$13;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1172
    return-void
.end method
