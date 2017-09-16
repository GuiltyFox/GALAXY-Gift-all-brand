.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$2;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;->b(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;)V
    .registers 2

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$2;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$2;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 1140
    return-void
.end method
