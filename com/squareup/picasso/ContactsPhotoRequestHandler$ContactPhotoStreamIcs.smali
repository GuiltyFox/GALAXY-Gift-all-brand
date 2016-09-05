.class Lcom/squareup/picasso/ContactsPhotoRequestHandler$ContactPhotoStreamIcs;
.super Ljava/lang/Object;
.source "ContactsPhotoRequestHandler.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
