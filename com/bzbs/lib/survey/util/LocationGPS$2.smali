.class final Lcom/bzbs/lib/survey/util/LocationGPS$2;
.super Ljava/lang/Object;
.source "LocationGPS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/LocationGPS;->a(Landroid/app/Activity;)Z
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .prologue
    .line 35
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 36
    return-void
.end method
