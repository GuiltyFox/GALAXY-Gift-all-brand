.class Lcom/samsung/privilege/activity/MainPagerActivity$15$1;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity$15;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity$15;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity$15;)V
    .registers 2

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$15$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$15$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$15;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$15;->d:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$15$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$15;

    iget-object v1, v1, Lcom/samsung/privilege/activity/MainPagerActivity$15;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Landroid/content/Context;)V

    .line 1174
    return-void
.end method
