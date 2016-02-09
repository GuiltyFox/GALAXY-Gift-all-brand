.class Lcom/samsung/privilege/newconcepts/utils/GPSTracker$1;
.super Ljava/lang/Object;
.source "GPSTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->showSettingsAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/newconcepts/utils/GPSTracker;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker$1;->this$0:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker$1;->this$0:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    # getter for: Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->access$0(Lcom/samsung/privilege/newconcepts/utils/GPSTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 173
    return-void
.end method
