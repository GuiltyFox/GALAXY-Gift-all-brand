.class Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1$1;
.super Ljava/lang/Object;
.source "AddMoneyCreditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/bzbs/bean/Campaign;

.field final synthetic c:Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;Landroid/view/View;Lcom/bzbs/bean/Campaign;)V
    .registers 4

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1$1;->c:Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1$1;->b:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1$1;->c:Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1$1;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1$1;->b:Lcom/bzbs/bean/Campaign;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/AddMoneyCreditActivity;->a(Lcom/samsung/privilege/activity/AddMoneyCreditActivity;Landroid/view/View;Lcom/bzbs/bean/Campaign;)V

    .line 142
    return-void
.end method
