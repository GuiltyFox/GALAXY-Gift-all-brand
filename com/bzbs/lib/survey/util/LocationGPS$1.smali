.class final Lcom/bzbs/lib/survey/util/LocationGPS$1;
.super Ljava/lang/Object;
.source "LocationGPS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/LocationGPS;->a(Landroid/app/Activity;)Z
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/LocationGPS$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/LocationGPS$1;->a:Landroid/app/Activity;

    const/16 v2, 0x26b5

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 29
    return-void
.end method
