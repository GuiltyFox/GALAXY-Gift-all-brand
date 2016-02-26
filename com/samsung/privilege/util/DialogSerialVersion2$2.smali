.class Lcom/samsung/privilege/util/DialogSerialVersion2$2;
.super Ljava/lang/Object;
.source "DialogSerialVersion2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialVersion2;->showDialogSerial(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityContext:Landroid/app/Activity;

.field private final synthetic val$dialogSerial:Landroid/app/Dialog;

.field private final synthetic val$objHandler:Landroid/os/Handler;

.field private final synthetic val$paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/bean/NFCTag;Landroid/app/Activity;Landroid/os/Handler;Landroid/app/Dialog;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$activityContext:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$objHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$dialogSerial:Landroid/app/Dialog;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v0, :cond_2b

    .line 364
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v0, :cond_2b

    .line 365
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Status"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 366
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$activityContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$objHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_Status(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    .line 383
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 386
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$activityContext:Landroid/app/Activity;

    invoke-static {v0}, Lic/buzzebeeslib/util/ScreenUtil;->getBrightnessMode(Landroid/app/Activity;)I

    move-result v0

    if-nez v0, :cond_aa

    .line 387
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$activityContext:Landroid/app/Activity;

    sget v1, Lic/buzzebeeslib/util/ScreenUtil;->DEFAULT_MANUAL:I

    sget v2, Lic/buzzebeeslib/util/ScreenUtil;->DEFAULT_MANUAL:I

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/ScreenUtil;->setBrightness(Landroid/app/Activity;II)V

    .line 392
    :goto_41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/privilege/util/DialogSerialVersion2;->gIsFinish:Z

    .line 393
    return-void

    .line 367
    :cond_45
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Share"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 368
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$activityContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$objHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/NfcUtils;->Action_Share(Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_2b

    .line 369
    :cond_68
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckIn"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 370
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$activityContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$objHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_CheckIn(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_2b

    .line 371
    :cond_8a
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReDeem"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 372
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$activityContext:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/NfcUtils;->Action_ReDeem(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto :goto_2b

    .line 389
    :cond_aa
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialVersion2$2;->val$activityContext:Landroid/app/Activity;

    const/16 v1, 0x32

    const/16 v2, 0x80

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/ScreenUtil;->setBrightness(Landroid/app/Activity;II)V

    goto :goto_41
.end method
