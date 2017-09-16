.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$16$2;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;)V
    .registers 2

    .prologue
    .line 899
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16$2;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 902
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16$2;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Z)Z

    .line 903
    return-void
.end method
