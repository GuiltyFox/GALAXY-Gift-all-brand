.class Lcom/samsung/privilege/util/DialogUtil$19;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil;->showDialogContinueUrl(Landroid/app/Activity;Landroid/os/Handler;Lcom/samsung/privilege/bean/CampaignView;Lcom/bitmapfun/util/ImageFetcher;Lcom/samsung/privilege/bean/NFCTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dialogSerial:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$19;->val$dialogSerial:Landroid/app/Dialog;

    .line 2070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$19;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2073
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/privilege/util/DialogUtil;->gIsFinish:Z

    .line 2074
    return-void
.end method
