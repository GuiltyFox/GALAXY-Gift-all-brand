.class Lcom/samsung/privilege/activity/MainPagerActivity$11;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 950
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$11;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$11;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$11;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 952
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$11;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 954
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$11;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->h(Landroid/content/Context;Z)Z

    .line 955
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$11;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    .line 956
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$11;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g()V

    .line 957
    return-void
.end method
