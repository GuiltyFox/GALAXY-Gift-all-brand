.class Lcom/bzbs/marketplace/activity/ReviewActivity$1$1;
.super Ljava/lang/Object;
.source "ReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/ReviewActivity$1;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/activity/ReviewActivity$1;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/ReviewActivity$1;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity$1;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/activity/ReviewActivity;->a(Lcom/bzbs/marketplace/activity/ReviewActivity;Z)Z

    .line 98
    return-void
.end method
