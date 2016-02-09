.class public Lcom/samsung/privilege/helper/LocalFileHelper$BitmapDataObject;
.super Ljava/lang/Object;
.source "LocalFileHelper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/helper/LocalFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BitmapDataObject"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x18cd33bee245eccL


# instance fields
.field public imageByteArray:[B


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
