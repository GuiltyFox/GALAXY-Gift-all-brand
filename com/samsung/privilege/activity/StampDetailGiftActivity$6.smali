.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$6;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 370
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$6;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .prologue
    .line 373
    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/privilege/util/DialogOTPUtil;->a:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$6;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$6;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$6;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/StampAgency;->issuer:Ljava/lang/String;

    const-string/jumbo v3, "StampAgency Deatil"

    const-string/jumbo v4, "stamp_create"

    iget-object v5, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$6;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v5}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->c(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Lcom/bzbs/bean/StampAgency;

    move-result-object v5

    iget-object v5, v5, Lcom/bzbs/bean/StampAgency;->issuer:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)V

    .line 375
    return-void
.end method
