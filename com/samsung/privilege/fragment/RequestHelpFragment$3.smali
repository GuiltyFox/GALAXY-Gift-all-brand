.class Lcom/samsung/privilege/fragment/RequestHelpFragment$3;
.super Ljava/lang/Object;
.source "RequestHelpFragment.java"

# interfaces
.implements Lcom/bzbs/marketplace/listener/OnTabItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/RequestHelpFragment;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/RequestHelpFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$3;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 6

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$3;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->k(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(I)Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getBuzzKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    .line 215
    :goto_10
    return-void

    .line 214
    :cond_11
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$3;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/samsung/privilege/activity/ReplyActivity;->a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/review/ReviewModel;Z)V

    goto :goto_10
.end method
