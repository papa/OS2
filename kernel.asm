
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	87013103          	ld	sp,-1936(sp) # 8000b870 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	074060ef          	jal	ra,80006090 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	304030ef          	jal	ra,8000438c <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    80001264:	00054783          	lbu	a5,0(a0)
    80001268:	00078a63          	beqz	a5,8000127c <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    8000126c:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    80001270:	00150513          	addi	a0,a0,1
    80001274:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    80001278:	fedff06f          	j	80001264 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    8000127c:	00f58023          	sb	a5,0(a1)
}
    80001280:	00813403          	ld	s0,8(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret

000000008000128c <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    8000128c:	fe010113          	addi	sp,sp,-32
    80001290:	00113c23          	sd	ra,24(sp)
    80001294:	00813823          	sd	s0,16(sp)
    80001298:	00913423          	sd	s1,8(sp)
    8000129c:	01213023          	sd	s2,0(sp)
    800012a0:	02010413          	addi	s0,sp,32
    800012a4:	00050493          	mv	s1,a0
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800012a8:	0e050913          	addi	s2,a0,224

    slabAllocatorLocal->buddy = buddy;
    800012ac:	0ea53023          	sd	a0,224(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012b0:	00000793          	li	a5,0
    800012b4:	0140006f          	j	800012c8 <_Z19slab_allocator_initP14buddyAllocator+0x3c>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800012b8:	00379713          	slli	a4,a5,0x3
    800012bc:	00e48733          	add	a4,s1,a4
    800012c0:	0e073423          	sd	zero,232(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012c4:	00178793          	addi	a5,a5,1
    800012c8:	00c00713          	li	a4,12
    800012cc:	fef776e3          	bgeu	a4,a5,800012b8 <_Z19slab_allocator_initP14buddyAllocator+0x2c>

    strcpy("Cache of caches", slabAllocatorLocal->cacheOfCaches.cacheName);
    800012d0:	15048593          	addi	a1,s1,336
    800012d4:	00008517          	auipc	a0,0x8
    800012d8:	d4c50513          	addi	a0,a0,-692 # 80009020 <CONSOLE_STATUS+0x10>
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	f7c080e7          	jalr	-132(ra) # 80001258 <_Z6strcpyPKcPc>
    slabAllocatorLocal->cacheOfCaches.ctor = nullptr;
    800012e4:	1a04bc23          	sd	zero,440(s1)
    slabAllocatorLocal->cacheOfCaches.dtor = nullptr;
    800012e8:	1c04b023          	sd	zero,448(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_empty = nullptr;
    800012ec:	1804b823          	sd	zero,400(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_full = nullptr;
    800012f0:	1804bc23          	sd	zero,408(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_partial = nullptr;
    800012f4:	1a04b023          	sd	zero,416(s1)
    slabAllocatorLocal->cacheOfCaches.slab_size = CACHE_OF_CACHES_SLAB_SIZE;
    800012f8:	00200793          	li	a5,2
    800012fc:	1af4b423          	sd	a5,424(s1)
    slabAllocatorLocal->cacheOfCaches.obj_size = sizeof(kmem_cache_t);
    80001300:	07800793          	li	a5,120
    80001304:	1af4b823          	sd	a5,432(s1)
    return slabAllocatorLocal;
}
    80001308:	00090513          	mv	a0,s2
    8000130c:	01813083          	ld	ra,24(sp)
    80001310:	01013403          	ld	s0,16(sp)
    80001314:	00813483          	ld	s1,8(sp)
    80001318:	00013903          	ld	s2,0(sp)
    8000131c:	02010113          	addi	sp,sp,32
    80001320:	00008067          	ret

0000000080001324 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    80001324:	ff010113          	addi	sp,sp,-16
    80001328:	00813423          	sd	s0,8(sp)
    8000132c:	01010413          	addi	s0,sp,16
    80001330:	00050593          	mv	a1,a0
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001334:	00000793          	li	a5,0
    80001338:	0185b703          	ld	a4,24(a1)
    8000133c:	04e7f463          	bgeu	a5,a4,80001384 <_Z14allocateObjectP6slab_s+0x60>
    {
        size_t mask = 1 << (i%8);
    80001340:	0077f713          	andi	a4,a5,7
    80001344:	00100613          	li	a2,1
    80001348:	00e616bb          	sllw	a3,a2,a4
        if(!((uint8)slab->allocated[i/8] & mask))
    8000134c:	0037d713          	srli	a4,a5,0x3
    80001350:	00e58733          	add	a4,a1,a4
    80001354:	02874703          	lbu	a4,40(a4)
    80001358:	00d77733          	and	a4,a4,a3
    8000135c:	00070663          	beqz	a4,80001368 <_Z14allocateObjectP6slab_s+0x44>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001360:	00178793          	addi	a5,a5,1
    80001364:	fd5ff06f          	j	80001338 <_Z14allocateObjectP6slab_s+0x14>
        {
            addr = (void*)((size_t)slab + sizeof(slab_t)+ i*slab->owner->obj_size);
    80001368:	0105b703          	ld	a4,16(a1)
    8000136c:	06073503          	ld	a0,96(a4)
    80001370:	02f50533          	mul	a0,a0,a5
    80001374:	00a58533          	add	a0,a1,a0
    80001378:	04850513          	addi	a0,a0,72
            index = i;
    8000137c:	0007879b          	sext.w	a5,a5
            break;
    80001380:	00c0006f          	j	8000138c <_Z14allocateObjectP6slab_s+0x68>
    void* addr = nullptr;
    80001384:	00000513          	li	a0,0
    int index = -1;
    80001388:	fff00793          	li	a5,-1
        }
    }
    if(addr == nullptr)
    8000138c:	04050063          	beqz	a0,800013cc <_Z14allocateObjectP6slab_s+0xa8>

    //KConsole::trapPrintStringInt("Allocated index ",index);

    //TODO
    //implement functions to set bit and check it
    slab->allocated[index/8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    80001390:	41f7d69b          	sraiw	a3,a5,0x1f
    80001394:	01d6d69b          	srliw	a3,a3,0x1d
    80001398:	00f687bb          	addw	a5,a3,a5
    8000139c:	4037d71b          	sraiw	a4,a5,0x3
    800013a0:	00e58733          	add	a4,a1,a4
    800013a4:	02870603          	lb	a2,40(a4)
    800013a8:	0077f793          	andi	a5,a5,7
    800013ac:	40d787bb          	subw	a5,a5,a3
    800013b0:	00100693          	li	a3,1
    800013b4:	00f697bb          	sllw	a5,a3,a5
    800013b8:	00f667b3          	or	a5,a2,a5
    800013bc:	02f70423          	sb	a5,40(a4)
    slab->numOfAllocatedObjects++;
    800013c0:	0205b783          	ld	a5,32(a1)
    800013c4:	00178793          	addi	a5,a5,1
    800013c8:	02f5b023          	sd	a5,32(a1)

    return addr;
}
    800013cc:	00813403          	ld	s0,8(sp)
    800013d0:	01010113          	addi	sp,sp,16
    800013d4:	00008067          	ret

00000000800013d8 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    800013d8:	ff010113          	addi	sp,sp,-16
    800013dc:	00813423          	sd	s0,8(sp)
    800013e0:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800013e4:	02053783          	ld	a5,32(a0)
    800013e8:	01853503          	ld	a0,24(a0)
    800013ec:	40f50533          	sub	a0,a0,a5
}
    800013f0:	00153513          	seqz	a0,a0
    800013f4:	00813403          	ld	s0,8(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00813423          	sd	s0,8(sp)
    80001408:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    8000140c:	02053503          	ld	a0,32(a0)
}
    80001410:	00153513          	seqz	a0,a0
    80001414:	00813403          	ld	s0,8(sp)
    80001418:	01010113          	addi	sp,sp,16
    8000141c:	00008067          	ret

0000000080001420 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    80001420:	ff010113          	addi	sp,sp,-16
    80001424:	00813423          	sd	s0,8(sp)
    80001428:	01010413          	addi	s0,sp,16
    slab->prev = nullptr;
    8000142c:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    80001430:	0005b783          	ld	a5,0(a1)
    80001434:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    80001438:	00078463          	beqz	a5,80001440 <_Z18insertIntoSlabListP6slab_sPS0_+0x20>
        (*slab_head)->prev = slab;
    8000143c:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    80001440:	00a5b023          	sd	a0,0(a1)
}
    80001444:	00813403          	ld	s0,8(sp)
    80001448:	01010113          	addi	sp,sp,16
    8000144c:	00008067          	ret

0000000080001450 <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    80001450:	ff010113          	addi	sp,sp,-16
    80001454:	00813423          	sd	s0,8(sp)
    80001458:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    8000145c:	00053783          	ld	a5,0(a0)
    80001460:	02078663          	beqz	a5,8000148c <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    80001464:	00853703          	ld	a4,8(a0)
    80001468:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    8000146c:	00070663          	beqz	a4,80001478 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    80001470:	00053783          	ld	a5,0(a0)
    80001474:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001478:	00053023          	sd	zero,0(a0)
    8000147c:	00053423          	sd	zero,8(a0)
    }
}
    80001480:	00813403          	ld	s0,8(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    8000148c:	00853783          	ld	a5,8(a0)
    80001490:	00078463          	beqz	a5,80001498 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001494:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001498:	00853783          	ld	a5,8(a0)
    8000149c:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    800014a0:	00053023          	sd	zero,0(a0)
    800014a4:	00053423          	sd	zero,8(a0)
    800014a8:	fd9ff06f          	j	80001480 <_Z18removeFromSlabListP6slab_sPS0_+0x30>

00000000800014ac <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    800014ac:	fe010113          	addi	sp,sp,-32
    800014b0:	00113c23          	sd	ra,24(sp)
    800014b4:	00813823          	sd	s0,16(sp)
    800014b8:	00913423          	sd	s1,8(sp)
    800014bc:	01213023          	sd	s2,0(sp)
    800014c0:	02010413          	addi	s0,sp,32
    800014c4:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    800014c8:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    800014cc:	05050593          	addi	a1,a0,80
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	f7c080e7          	jalr	-132(ra) # 80001450 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    800014dc:	04848593          	addi	a1,s1,72
    800014e0:	00090513          	mv	a0,s2
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	f3c080e7          	jalr	-196(ra) # 80001420 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800014ec:	01813083          	ld	ra,24(sp)
    800014f0:	01013403          	ld	s0,16(sp)
    800014f4:	00813483          	ld	s1,8(sp)
    800014f8:	00013903          	ld	s2,0(sp)
    800014fc:	02010113          	addi	sp,sp,32
    80001500:	00008067          	ret

0000000080001504 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    80001504:	fe010113          	addi	sp,sp,-32
    80001508:	00113c23          	sd	ra,24(sp)
    8000150c:	00813823          	sd	s0,16(sp)
    80001510:	00913423          	sd	s1,8(sp)
    80001514:	01213023          	sd	s2,0(sp)
    80001518:	02010413          	addi	s0,sp,32
    8000151c:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    80001520:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    80001524:	04050593          	addi	a1,a0,64
    80001528:	00090513          	mv	a0,s2
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	f24080e7          	jalr	-220(ra) # 80001450 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001534:	05048593          	addi	a1,s1,80
    80001538:	00090513          	mv	a0,s2
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	ee4080e7          	jalr	-284(ra) # 80001420 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001544:	01813083          	ld	ra,24(sp)
    80001548:	01013403          	ld	s0,16(sp)
    8000154c:	00813483          	ld	s1,8(sp)
    80001550:	00013903          	ld	s2,0(sp)
    80001554:	02010113          	addi	sp,sp,32
    80001558:	00008067          	ret

000000008000155c <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    8000155c:	fe010113          	addi	sp,sp,-32
    80001560:	00113c23          	sd	ra,24(sp)
    80001564:	00813823          	sd	s0,16(sp)
    80001568:	00913423          	sd	s1,8(sp)
    8000156c:	01213023          	sd	s2,0(sp)
    80001570:	02010413          	addi	s0,sp,32
    80001574:	00050913          	mv	s2,a0
    80001578:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    8000157c:	04850593          	addi	a1,a0,72
    80001580:	00048513          	mv	a0,s1
    80001584:	00000097          	auipc	ra,0x0
    80001588:	ecc080e7          	jalr	-308(ra) # 80001450 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    8000158c:	05090593          	addi	a1,s2,80
    80001590:	00048513          	mv	a0,s1
    80001594:	00000097          	auipc	ra,0x0
    80001598:	e8c080e7          	jalr	-372(ra) # 80001420 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    8000159c:	01813083          	ld	ra,24(sp)
    800015a0:	01013403          	ld	s0,16(sp)
    800015a4:	00813483          	ld	s1,8(sp)
    800015a8:	00013903          	ld	s2,0(sp)
    800015ac:	02010113          	addi	sp,sp,32
    800015b0:	00008067          	ret

00000000800015b4 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    800015b4:	fe010113          	addi	sp,sp,-32
    800015b8:	00113c23          	sd	ra,24(sp)
    800015bc:	00813823          	sd	s0,16(sp)
    800015c0:	00913423          	sd	s1,8(sp)
    800015c4:	01213023          	sd	s2,0(sp)
    800015c8:	02010413          	addi	s0,sp,32
    800015cc:	00050913          	mv	s2,a0
    800015d0:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    800015d4:	05050593          	addi	a1,a0,80
    800015d8:	00048513          	mv	a0,s1
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	e74080e7          	jalr	-396(ra) # 80001450 <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    800015e4:	04090593          	addi	a1,s2,64
    800015e8:	00048513          	mv	a0,s1
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	e34080e7          	jalr	-460(ra) # 80001420 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800015f4:	01813083          	ld	ra,24(sp)
    800015f8:	01013403          	ld	s0,16(sp)
    800015fc:	00813483          	ld	s1,8(sp)
    80001600:	00013903          	ld	s2,0(sp)
    80001604:	02010113          	addi	sp,sp,32
    80001608:	00008067          	ret

000000008000160c <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    8000160c:	fe010113          	addi	sp,sp,-32
    80001610:	00113c23          	sd	ra,24(sp)
    80001614:	00813823          	sd	s0,16(sp)
    80001618:	00913423          	sd	s1,8(sp)
    8000161c:	02010413          	addi	s0,sp,32
    80001620:	00050493          	mv	s1,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size);
    80001624:	05853583          	ld	a1,88(a0)
    80001628:	0000a797          	auipc	a5,0xa
    8000162c:	2e87b783          	ld	a5,744(a5) # 8000b910 <_ZL13slabAllocator>
    80001630:	0007b503          	ld	a0,0(a5)
    80001634:	00001097          	auipc	ra,0x1
    80001638:	610080e7          	jalr	1552(ra) # 80002c44 <_Z11buddy_allocP14buddyAllocatorm>
    newSlab->next = cachep->slabs_empty;
    8000163c:	0404b783          	ld	a5,64(s1)
    80001640:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    80001644:	00078463          	beqz	a5,8000164c <_Z12allocateSlabP12kmem_cache_s+0x40>
        cachep->slabs_empty->prev = newSlab;
    80001648:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    8000164c:	04a4b023          	sd	a0,64(s1)
    newSlab->prev = nullptr;
    80001650:	00053023          	sd	zero,0(a0)
    newSlab->numOfAllocatedObjects = 0;
    80001654:	02053023          	sd	zero,32(a0)
    newSlab->owner = cachep;
    80001658:	00953823          	sd	s1,16(a0)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    8000165c:	0584b683          	ld	a3,88(s1)
    80001660:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001664:	fb868693          	addi	a3,a3,-72
    80001668:	0604b783          	ld	a5,96(s1)
    8000166c:	02f6d6b3          	divu	a3,a3,a5
    80001670:	00d53c23          	sd	a3,24(a0)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001674:	00000713          	li	a4,0
    80001678:	00768793          	addi	a5,a3,7
    8000167c:	0037d793          	srli	a5,a5,0x3
    80001680:	00f77a63          	bgeu	a4,a5,80001694 <_Z12allocateSlabP12kmem_cache_s+0x88>
        newSlab->allocated[i] = 0;
    80001684:	00e507b3          	add	a5,a0,a4
    80001688:	02078423          	sb	zero,40(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    8000168c:	00170713          	addi	a4,a4,1
    80001690:	fe9ff06f          	j	80001678 <_Z12allocateSlabP12kmem_cache_s+0x6c>
}
    80001694:	01813083          	ld	ra,24(sp)
    80001698:	01013403          	ld	s0,16(sp)
    8000169c:	00813483          	ld	s1,8(sp)
    800016a0:	02010113          	addi	sp,sp,32
    800016a4:	00008067          	ret

00000000800016a8 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00813423          	sd	s0,8(sp)
    800016b0:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    800016b4:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800016b8:	04850713          	addi	a4,a0,72
    800016bc:	00e7f663          	bgeu	a5,a4,800016c8 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    800016c0:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800016c4:	ff5ff06f          	j	800016b8 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800016c8:	fb878593          	addi	a1,a5,-72 # fb8 <_entry-0x7ffff048>
    800016cc:	02a5f5b3          	remu	a1,a1,a0

    for(int i = 1;i<=4;i++) //TODO change constants
    800016d0:	00100713          	li	a4,1
    800016d4:	0080006f          	j	800016dc <_Z18getOptimalSlabSizem+0x34>
    800016d8:	0017071b          	addiw	a4,a4,1
    800016dc:	00400693          	li	a3,4
    800016e0:	02e6c063          	blt	a3,a4,80001700 <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    800016e4:	00e79633          	sll	a2,a5,a4
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    800016e8:	fb860693          	addi	a3,a2,-72
    800016ec:	02a6f6b3          	remu	a3,a3,a0
        if(newWaste < optimalWaste)
    800016f0:	feb6f4e3          	bgeu	a3,a1,800016d8 <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    800016f4:	00068593          	mv	a1,a3
            bestSize = newSize;
    800016f8:	00060793          	mv	a5,a2
    800016fc:	fddff06f          	j	800016d8 <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    80001700:	00c7d513          	srli	a0,a5,0xc
    80001704:	00813403          	ld	s0,8(sp)
    80001708:	01010113          	addi	sp,sp,16
    8000170c:	00008067          	ret

0000000080001710 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    80001710:	ff010113          	addi	sp,sp,-16
    80001714:	00813423          	sd	s0,8(sp)
    80001718:	01010413          	addi	s0,sp,16
    8000171c:	00050693          	mv	a3,a0
    if(cachep == nullptr || objp == nullptr)
    80001720:	02050c63          	beqz	a0,80001758 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    80001724:	06058a63          	beqz	a1,80001798 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001728:	04853503          	ld	a0,72(a0)
    8000172c:	0080006f          	j	80001734 <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    80001730:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001734:	02050863          	beqz	a0,80001764 <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001738:	01853783          	ld	a5,24(a0)
    8000173c:	01053703          	ld	a4,16(a0)
    80001740:	06073703          	ld	a4,96(a4)
    80001744:	02e787b3          	mul	a5,a5,a4
    80001748:	00a787b3          	add	a5,a5,a0
    8000174c:	04878793          	addi	a5,a5,72
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001750:	feb570e3          	bgeu	a0,a1,80001730 <_Z8findSlabP12kmem_cache_sPKv+0x20>
    80001754:	fcf5fee3          	bgeu	a1,a5,80001730 <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001758:	00813403          	ld	s0,8(sp)
    8000175c:	01010113          	addi	sp,sp,16
    80001760:	00008067          	ret
    slab = cachep->slabs_partial;
    80001764:	0506b503          	ld	a0,80(a3)
    80001768:	0080006f          	j	80001770 <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    8000176c:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001770:	fe0504e3          	beqz	a0,80001758 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001774:	01853783          	ld	a5,24(a0)
    80001778:	01053703          	ld	a4,16(a0)
    8000177c:	06073703          	ld	a4,96(a4)
    80001780:	02e787b3          	mul	a5,a5,a4
    80001784:	00a787b3          	add	a5,a5,a0
    80001788:	04878793          	addi	a5,a5,72
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    8000178c:	feb570e3          	bgeu	a0,a1,8000176c <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    80001790:	fcf5fee3          	bgeu	a1,a5,8000176c <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    80001794:	fc5ff06f          	j	80001758 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    80001798:	00058513          	mv	a0,a1
    8000179c:	fbdff06f          	j	80001758 <_Z8findSlabP12kmem_cache_sPKv+0x48>

00000000800017a0 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    800017a0:	ff010113          	addi	sp,sp,-16
    800017a4:	00813423          	sd	s0,8(sp)
    800017a8:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    800017ac:	41f5d79b          	sraiw	a5,a1,0x1f
    800017b0:	01d7d79b          	srliw	a5,a5,0x1d
    800017b4:	00b785bb          	addw	a1,a5,a1
    800017b8:	4035d71b          	sraiw	a4,a1,0x3
    800017bc:	00e50533          	add	a0,a0,a4
    800017c0:	02850703          	lb	a4,40(a0)
    800017c4:	0075f593          	andi	a1,a1,7
    800017c8:	40f585bb          	subw	a1,a1,a5
    800017cc:	00100793          	li	a5,1
    800017d0:	00b795bb          	sllw	a1,a5,a1
    800017d4:	fff5c593          	not	a1,a1
    800017d8:	00b775b3          	and	a1,a4,a1
    800017dc:	02b50423          	sb	a1,40(a0)
}
    800017e0:	00813403          	ld	s0,8(sp)
    800017e4:	01010113          	addi	sp,sp,16
    800017e8:	00008067          	ret

00000000800017ec <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    800017ec:	fe010113          	addi	sp,sp,-32
    800017f0:	00113c23          	sd	ra,24(sp)
    800017f4:	00813823          	sd	s0,16(sp)
    800017f8:	00913423          	sd	s1,8(sp)
    800017fc:	01213023          	sd	s2,0(sp)
    80001800:	02010413          	addi	s0,sp,32
    80001804:	00050913          	mv	s2,a0
    KConsole::trapPrintString("One slab info---------\n");
    80001808:	00008517          	auipc	a0,0x8
    8000180c:	82850513          	addi	a0,a0,-2008 # 80009030 <CONSOLE_STATUS+0x20>
    80001810:	00002097          	auipc	ra,0x2
    80001814:	c4c080e7          	jalr	-948(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    80001818:	01000613          	li	a2,16
    8000181c:	00090593          	mv	a1,s2
    80001820:	00008517          	auipc	a0,0x8
    80001824:	82850513          	addi	a0,a0,-2008 # 80009048 <CONSOLE_STATUS+0x38>
    80001828:	00002097          	auipc	ra,0x2
    8000182c:	d0c080e7          	jalr	-756(ra) # 80003534 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001830:	00a00613          	li	a2,10
    80001834:	02093583          	ld	a1,32(s2)
    80001838:	00008517          	auipc	a0,0x8
    8000183c:	82050513          	addi	a0,a0,-2016 # 80009058 <CONSOLE_STATUS+0x48>
    80001840:	00002097          	auipc	ra,0x2
    80001844:	cf4080e7          	jalr	-780(ra) # 80003534 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001848:	00a00613          	li	a2,10
    8000184c:	01893583          	ld	a1,24(s2)
    80001850:	00008517          	auipc	a0,0x8
    80001854:	82850513          	addi	a0,a0,-2008 # 80009078 <CONSOLE_STATUS+0x68>
    80001858:	00002097          	auipc	ra,0x2
    8000185c:	cdc080e7          	jalr	-804(ra) # 80003534 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    80001860:	00000493          	li	s1,0
    80001864:	01893783          	ld	a5,24(s2)
    80001868:	00778793          	addi	a5,a5,7
    8000186c:	0037d793          	srli	a5,a5,0x3
    80001870:	02f4fa63          	bgeu	s1,a5,800018a4 <_Z13printSlabInfoP6slab_s+0xb8>
    {
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
    80001874:	009907b3          	add	a5,s2,s1
    80001878:	00000613          	li	a2,0
    8000187c:	01000593          	li	a1,16
    80001880:	0287c503          	lbu	a0,40(a5)
    80001884:	00002097          	auipc	ra,0x2
    80001888:	c1c080e7          	jalr	-996(ra) # 800034a0 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    8000188c:	00008517          	auipc	a0,0x8
    80001890:	d4c50513          	addi	a0,a0,-692 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80001894:	00002097          	auipc	ra,0x2
    80001898:	bc8080e7          	jalr	-1080(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < (slab->numOfObjects + 7) / 8;i++)
    8000189c:	00148493          	addi	s1,s1,1
    800018a0:	fc5ff06f          	j	80001864 <_Z13printSlabInfoP6slab_s+0x78>
    }
}
    800018a4:	01813083          	ld	ra,24(sp)
    800018a8:	01013403          	ld	s0,16(sp)
    800018ac:	00813483          	ld	s1,8(sp)
    800018b0:	00013903          	ld	s2,0(sp)
    800018b4:	02010113          	addi	sp,sp,32
    800018b8:	00008067          	ret

00000000800018bc <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    800018bc:	0e050463          	beqz	a0,800019a4 <_Z16free_slab_objectP6slab_sPKv+0xe8>
{
    800018c0:	fe010113          	addi	sp,sp,-32
    800018c4:	00113c23          	sd	ra,24(sp)
    800018c8:	00813823          	sd	s0,16(sp)
    800018cc:	00913423          	sd	s1,8(sp)
    800018d0:	02010413          	addi	s0,sp,32
    800018d4:	00050493          	mv	s1,a0
    800018d8:	00058693          	mv	a3,a1
    if(slab == nullptr || objp == nullptr)
    800018dc:	02058663          	beqz	a1,80001908 <_Z16free_slab_objectP6slab_sPKv+0x4c>
        return;
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    800018e0:	40a58733          	sub	a4,a1,a0
    800018e4:	fb870713          	addi	a4,a4,-72
    800018e8:	01053783          	ld	a5,16(a0)
    800018ec:	0607b783          	ld	a5,96(a5)
    800018f0:	02f75733          	divu	a4,a4,a5
    800018f4:	0007059b          	sext.w	a1,a4
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    800018f8:	02b787b3          	mul	a5,a5,a1
    800018fc:	00f507b3          	add	a5,a0,a5
    80001900:	04878793          	addi	a5,a5,72
    80001904:	00f68c63          	beq	a3,a5,8000191c <_Z16free_slab_objectP6slab_sPKv+0x60>
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
}
    80001908:	01813083          	ld	ra,24(sp)
    8000190c:	01013403          	ld	s0,16(sp)
    80001910:	00813483          	ld	s1,8(sp)
    80001914:	02010113          	addi	sp,sp,32
    80001918:	00008067          	ret
    resetAllocatedIndex(slab, indexOfObject);
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	e84080e7          	jalr	-380(ra) # 800017a0 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001924:	0184b703          	ld	a4,24(s1)
    80001928:	0204b783          	ld	a5,32(s1)
    8000192c:	00f70c63          	beq	a4,a5,80001944 <_Z16free_slab_objectP6slab_sPKv+0x88>
    else if(slab->numOfAllocatedObjects == 1)
    80001930:	00100713          	li	a4,1
    80001934:	04e78863          	beq	a5,a4,80001984 <_Z16free_slab_objectP6slab_sPKv+0xc8>
        slab->numOfAllocatedObjects--;
    80001938:	fff78793          	addi	a5,a5,-1
    8000193c:	02f4b023          	sd	a5,32(s1)
    80001940:	fc9ff06f          	j	80001908 <_Z16free_slab_objectP6slab_sPKv+0x4c>
        removeFullSlab(slab->owner, slab);
    80001944:	00048593          	mv	a1,s1
    80001948:	0104b503          	ld	a0,16(s1)
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	c10080e7          	jalr	-1008(ra) # 8000155c <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001954:	0204b783          	ld	a5,32(s1)
    80001958:	fff78793          	addi	a5,a5,-1
    8000195c:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001960:	00048513          	mv	a0,s1
    80001964:	00000097          	auipc	ra,0x0
    80001968:	a9c080e7          	jalr	-1380(ra) # 80001400 <_Z5emptyP6slab_s>
    8000196c:	f8050ee3          	beqz	a0,80001908 <_Z16free_slab_objectP6slab_sPKv+0x4c>
            removePartialSlab(slab->owner, slab);
    80001970:	00048593          	mv	a1,s1
    80001974:	0104b503          	ld	a0,16(s1)
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	c3c080e7          	jalr	-964(ra) # 800015b4 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001980:	f89ff06f          	j	80001908 <_Z16free_slab_objectP6slab_sPKv+0x4c>
        removePartialSlab(slab->owner, slab);
    80001984:	00048593          	mv	a1,s1
    80001988:	0104b503          	ld	a0,16(s1)
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	c28080e7          	jalr	-984(ra) # 800015b4 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001994:	0204b783          	ld	a5,32(s1)
    80001998:	fff78793          	addi	a5,a5,-1
    8000199c:	02f4b023          	sd	a5,32(s1)
    800019a0:	f69ff06f          	j	80001908 <_Z16free_slab_objectP6slab_sPKv+0x4c>
    800019a4:	00008067          	ret

00000000800019a8 <_Z9kmem_initPvi>:
    }
}

//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    800019a8:	ff010113          	addi	sp,sp,-16
    800019ac:	00113423          	sd	ra,8(sp)
    800019b0:	00813023          	sd	s0,0(sp)
    800019b4:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	47c080e7          	jalr	1148(ra) # 80002e34 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    800019c0:	00000097          	auipc	ra,0x0
    800019c4:	8cc080e7          	jalr	-1844(ra) # 8000128c <_Z19slab_allocator_initP14buddyAllocator>
    800019c8:	0000a797          	auipc	a5,0xa
    800019cc:	f4a7b423          	sd	a0,-184(a5) # 8000b910 <_ZL13slabAllocator>
    //printSlabAllocatorInfo();
}
    800019d0:	00813083          	ld	ra,8(sp)
    800019d4:	00013403          	ld	s0,0(sp)
    800019d8:	01010113          	addi	sp,sp,16
    800019dc:	00008067          	ret

00000000800019e0 <_Z16kmem_cache_allocP12kmem_cache_s>:
    newCache->slab_size = getOptimalSlabSize(size);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    800019e0:	fe010113          	addi	sp,sp,-32
    800019e4:	00113c23          	sd	ra,24(sp)
    800019e8:	00813823          	sd	s0,16(sp)
    800019ec:	00913423          	sd	s1,8(sp)
    800019f0:	01213023          	sd	s2,0(sp)
    800019f4:	02010413          	addi	s0,sp,32
    800019f8:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr)
    800019fc:	05053503          	ld	a0,80(a0)
    80001a00:	04051a63          	bnez	a0,80001a54 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001a04:	0404b503          	ld	a0,64(s1)
    80001a08:	08050a63          	beqz	a0,80001a9c <_Z16kmem_cache_allocP12kmem_cache_s+0xbc>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	918080e7          	jalr	-1768(ra) # 80001324 <_Z14allocateObjectP6slab_s>
    80001a14:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001a18:	0404b503          	ld	a0,64(s1)
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	9e4080e7          	jalr	-1564(ra) # 80001400 <_Z5emptyP6slab_s>
    80001a24:	04051663          	bnez	a0,80001a70 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        {
            putEmptyToPartial(cachep);
    80001a28:	00048513          	mv	a0,s1
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	ad8080e7          	jalr	-1320(ra) # 80001504 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001a34:	0504b503          	ld	a0,80(s1)
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	9a0080e7          	jalr	-1632(ra) # 800013d8 <_Z4fullP6slab_s>
    80001a40:	02050863          	beqz	a0,80001a70 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
                putPartialToFull(cachep);
    80001a44:	00048513          	mv	a0,s1
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	a64080e7          	jalr	-1436(ra) # 800014ac <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001a50:	0200006f          	j	80001a70 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	8d0080e7          	jalr	-1840(ra) # 80001324 <_Z14allocateObjectP6slab_s>
    80001a5c:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001a60:	0504b503          	ld	a0,80(s1)
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	974080e7          	jalr	-1676(ra) # 800013d8 <_Z4fullP6slab_s>
    80001a6c:	02051063          	bnez	a0,80001a8c <_Z16kmem_cache_allocP12kmem_cache_s+0xac>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001a70:	00090513          	mv	a0,s2
    80001a74:	01813083          	ld	ra,24(sp)
    80001a78:	01013403          	ld	s0,16(sp)
    80001a7c:	00813483          	ld	s1,8(sp)
    80001a80:	00013903          	ld	s2,0(sp)
    80001a84:	02010113          	addi	sp,sp,32
    80001a88:	00008067          	ret
            putPartialToFull(cachep);
    80001a8c:	00048513          	mv	a0,s1
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	a1c080e7          	jalr	-1508(ra) # 800014ac <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001a98:	fd9ff06f          	j	80001a70 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        allocateSlab(cachep);
    80001a9c:	00048513          	mv	a0,s1
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	b6c080e7          	jalr	-1172(ra) # 8000160c <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001aa8:	0404b903          	ld	s2,64(s1)
    80001aac:	fc0902e3          	beqz	s2,80001a70 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001ab0:	00090513          	mv	a0,s2
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	870080e7          	jalr	-1936(ra) # 80001324 <_Z14allocateObjectP6slab_s>
    80001abc:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001ac0:	0404b503          	ld	a0,64(s1)
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	93c080e7          	jalr	-1732(ra) # 80001400 <_Z5emptyP6slab_s>
    80001acc:	fa0512e3          	bnez	a0,80001a70 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
            putEmptyToPartial(cachep);
    80001ad0:	00048513          	mv	a0,s1
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	a30080e7          	jalr	-1488(ra) # 80001504 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001adc:	0504b503          	ld	a0,80(s1)
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	8f8080e7          	jalr	-1800(ra) # 800013d8 <_Z4fullP6slab_s>
    80001ae8:	f80504e3          	beqz	a0,80001a70 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
                putPartialToFull(cachep);
    80001aec:	00048513          	mv	a0,s1
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	9bc080e7          	jalr	-1604(ra) # 800014ac <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001af8:	f79ff06f          	j	80001a70 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>

0000000080001afc <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001afc:	fc010113          	addi	sp,sp,-64
    80001b00:	02113c23          	sd	ra,56(sp)
    80001b04:	02813823          	sd	s0,48(sp)
    80001b08:	02913423          	sd	s1,40(sp)
    80001b0c:	03213023          	sd	s2,32(sp)
    80001b10:	01313c23          	sd	s3,24(sp)
    80001b14:	01413823          	sd	s4,16(sp)
    80001b18:	01513423          	sd	s5,8(sp)
    80001b1c:	04010413          	addi	s0,sp,64
    80001b20:	00050993          	mv	s3,a0
    80001b24:	00058913          	mv	s2,a1
    80001b28:	00060a13          	mv	s4,a2
    80001b2c:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001b30:	0000a517          	auipc	a0,0xa
    80001b34:	de053503          	ld	a0,-544(a0) # 8000b910 <_ZL13slabAllocator>
    80001b38:	07050513          	addi	a0,a0,112
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	ea4080e7          	jalr	-348(ra) # 800019e0 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001b44:	00050493          	mv	s1,a0
    newCache->slabs_empty = nullptr;
    80001b48:	04053023          	sd	zero,64(a0)
    newCache->slabs_partial = nullptr;
    80001b4c:	04053823          	sd	zero,80(a0)
    newCache->slabs_full = nullptr;
    80001b50:	04053423          	sd	zero,72(a0)
    newCache->dtor = dtor;
    80001b54:	07553823          	sd	s5,112(a0)
    newCache->ctor = ctor;
    80001b58:	07453423          	sd	s4,104(a0)
    strcpy(name, newCache->cacheName);
    80001b5c:	00050593          	mv	a1,a0
    80001b60:	00098513          	mv	a0,s3
    80001b64:	fffff097          	auipc	ra,0xfffff
    80001b68:	6f4080e7          	jalr	1780(ra) # 80001258 <_Z6strcpyPKcPc>
    newCache->obj_size = size;
    80001b6c:	0724b023          	sd	s2,96(s1)
    newCache->slab_size = getOptimalSlabSize(size);
    80001b70:	00090513          	mv	a0,s2
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	b34080e7          	jalr	-1228(ra) # 800016a8 <_Z18getOptimalSlabSizem>
    80001b7c:	04a4bc23          	sd	a0,88(s1)
}
    80001b80:	00048513          	mv	a0,s1
    80001b84:	03813083          	ld	ra,56(sp)
    80001b88:	03013403          	ld	s0,48(sp)
    80001b8c:	02813483          	ld	s1,40(sp)
    80001b90:	02013903          	ld	s2,32(sp)
    80001b94:	01813983          	ld	s3,24(sp)
    80001b98:	01013a03          	ld	s4,16(sp)
    80001b9c:	00813a83          	ld	s5,8(sp)
    80001ba0:	04010113          	addi	sp,sp,64
    80001ba4:	00008067          	ret

0000000080001ba8 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001ba8:	04050663          	beqz	a0,80001bf4 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
{
    80001bac:	fe010113          	addi	sp,sp,-32
    80001bb0:	00113c23          	sd	ra,24(sp)
    80001bb4:	00813823          	sd	s0,16(sp)
    80001bb8:	00913423          	sd	s1,8(sp)
    80001bbc:	02010413          	addi	s0,sp,32
    80001bc0:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001bc4:	00058e63          	beqz	a1,80001be0 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	b48080e7          	jalr	-1208(ra) # 80001710 <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001bd0:	00050863          	beqz	a0,80001be0 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
    free_slab_object(slab, objp);
    80001bd4:	00048593          	mv	a1,s1
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	ce4080e7          	jalr	-796(ra) # 800018bc <_Z16free_slab_objectP6slab_sPKv>
}
    80001be0:	01813083          	ld	ra,24(sp)
    80001be4:	01013403          	ld	s0,16(sp)
    80001be8:	00813483          	ld	s1,8(sp)
    80001bec:	02010113          	addi	sp,sp,32
    80001bf0:	00008067          	ret
    80001bf4:	00008067          	ret

0000000080001bf8 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO
//what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    80001bf8:	fe010113          	addi	sp,sp,-32
    80001bfc:	00113c23          	sd	ra,24(sp)
    80001c00:	00813823          	sd	s0,16(sp)
    80001c04:	00913423          	sd	s1,8(sp)
    80001c08:	01213023          	sd	s2,0(sp)
    80001c0c:	02010413          	addi	s0,sp,32
    80001c10:	00050913          	mv	s2,a0
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    80001c14:	00007517          	auipc	a0,0x7
    80001c18:	47c50513          	addi	a0,a0,1148 # 80009090 <CONSOLE_STATUS+0x80>
    80001c1c:	00002097          	auipc	ra,0x2
    80001c20:	840080e7          	jalr	-1984(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001c24:	00007517          	auipc	a0,0x7
    80001c28:	4a450513          	addi	a0,a0,1188 # 800090c8 <CONSOLE_STATUS+0xb8>
    80001c2c:	00002097          	auipc	ra,0x2
    80001c30:	830080e7          	jalr	-2000(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001c34:	00090513          	mv	a0,s2
    80001c38:	00002097          	auipc	ra,0x2
    80001c3c:	824080e7          	jalr	-2012(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    80001c40:	00008517          	auipc	a0,0x8
    80001c44:	99850513          	addi	a0,a0,-1640 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80001c48:	00002097          	auipc	ra,0x2
    80001c4c:	814080e7          	jalr	-2028(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80001c50:	00a00613          	li	a2,10
    80001c54:	05893583          	ld	a1,88(s2)
    80001c58:	00007517          	auipc	a0,0x7
    80001c5c:	48050513          	addi	a0,a0,1152 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001c60:	00002097          	auipc	ra,0x2
    80001c64:	8d4080e7          	jalr	-1836(ra) # 80003534 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80001c68:	00a00613          	li	a2,10
    80001c6c:	06093583          	ld	a1,96(s2)
    80001c70:	00007517          	auipc	a0,0x7
    80001c74:	48850513          	addi	a0,a0,1160 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001c78:	00002097          	auipc	ra,0x2
    80001c7c:	8bc080e7          	jalr	-1860(ra) # 80003534 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80001c80:	00007517          	auipc	a0,0x7
    80001c84:	49850513          	addi	a0,a0,1176 # 80009118 <CONSOLE_STATUS+0x108>
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	7d4080e7          	jalr	2004(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001c90:	00007517          	auipc	a0,0x7
    80001c94:	4a850513          	addi	a0,a0,1192 # 80009138 <CONSOLE_STATUS+0x128>
    80001c98:	00001097          	auipc	ra,0x1
    80001c9c:	7c4080e7          	jalr	1988(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001ca0:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    80001ca4:	00048c63          	beqz	s1,80001cbc <_Z15kmem_cache_infoP12kmem_cache_s+0xc4>
    {
        printSlabInfo(slab);
    80001ca8:	00048513          	mv	a0,s1
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	b40080e7          	jalr	-1216(ra) # 800017ec <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001cb4:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001cb8:	fedff06f          	j	80001ca4 <_Z15kmem_cache_infoP12kmem_cache_s+0xac>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001cbc:	00007517          	auipc	a0,0x7
    80001cc0:	48c50513          	addi	a0,a0,1164 # 80009148 <CONSOLE_STATUS+0x138>
    80001cc4:	00001097          	auipc	ra,0x1
    80001cc8:	798080e7          	jalr	1944(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001ccc:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80001cd0:	00048c63          	beqz	s1,80001ce8 <_Z15kmem_cache_infoP12kmem_cache_s+0xf0>
    {
        printSlabInfo(slab);
    80001cd4:	00048513          	mv	a0,s1
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	b14080e7          	jalr	-1260(ra) # 800017ec <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001ce0:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001ce4:	fedff06f          	j	80001cd0 <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001ce8:	00007517          	auipc	a0,0x7
    80001cec:	47050513          	addi	a0,a0,1136 # 80009158 <CONSOLE_STATUS+0x148>
    80001cf0:	00001097          	auipc	ra,0x1
    80001cf4:	76c080e7          	jalr	1900(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001cf8:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    80001cfc:	00048c63          	beqz	s1,80001d14 <_Z15kmem_cache_infoP12kmem_cache_s+0x11c>
    {
        printSlabInfo(slab);
    80001d00:	00048513          	mv	a0,s1
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	ae8080e7          	jalr	-1304(ra) # 800017ec <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001d0c:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001d10:	fedff06f          	j	80001cfc <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    }
}
    80001d14:	01813083          	ld	ra,24(sp)
    80001d18:	01013403          	ld	s0,16(sp)
    80001d1c:	00813483          	ld	s1,8(sp)
    80001d20:	00013903          	ld	s2,0(sp)
    80001d24:	02010113          	addi	sp,sp,32
    80001d28:	00008067          	ret

0000000080001d2c <_Z22printSlabAllocatorInfov>:
{
    80001d2c:	fe010113          	addi	sp,sp,-32
    80001d30:	00113c23          	sd	ra,24(sp)
    80001d34:	00813823          	sd	s0,16(sp)
    80001d38:	00913423          	sd	s1,8(sp)
    80001d3c:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    80001d40:	00007517          	auipc	a0,0x7
    80001d44:	42850513          	addi	a0,a0,1064 # 80009168 <CONSOLE_STATUS+0x158>
    80001d48:	00001097          	auipc	ra,0x1
    80001d4c:	714080e7          	jalr	1812(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator buddy address ", (size_t)slabAllocator->buddy,16);
    80001d50:	0000a497          	auipc	s1,0xa
    80001d54:	bc048493          	addi	s1,s1,-1088 # 8000b910 <_ZL13slabAllocator>
    80001d58:	0004b783          	ld	a5,0(s1)
    80001d5c:	01000613          	li	a2,16
    80001d60:	0007b583          	ld	a1,0(a5)
    80001d64:	00007517          	auipc	a0,0x7
    80001d68:	45450513          	addi	a0,a0,1108 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	7c8080e7          	jalr	1992(ra) # 80003534 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    80001d74:	01000613          	li	a2,16
    80001d78:	0004b583          	ld	a1,0(s1)
    80001d7c:	00007517          	auipc	a0,0x7
    80001d80:	45c50513          	addi	a0,a0,1116 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80001d84:	00001097          	auipc	ra,0x1
    80001d88:	7b0080e7          	jalr	1968(ra) # 80003534 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    80001d8c:	00007517          	auipc	a0,0x7
    80001d90:	46450513          	addi	a0,a0,1124 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80001d94:	00001097          	auipc	ra,0x1
    80001d98:	6c8080e7          	jalr	1736(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    80001d9c:	0004b503          	ld	a0,0(s1)
    80001da0:	07050513          	addi	a0,a0,112
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	e54080e7          	jalr	-428(ra) # 80001bf8 <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    80001dac:	00007517          	auipc	a0,0x7
    80001db0:	45c50513          	addi	a0,a0,1116 # 80009208 <CONSOLE_STATUS+0x1f8>
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	6a8080e7          	jalr	1704(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001dbc:	00000493          	li	s1,0
    80001dc0:	0100006f          	j	80001dd0 <_Z22printSlabAllocatorInfov+0xa4>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	e34080e7          	jalr	-460(ra) # 80001bf8 <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001dcc:	00148493          	addi	s1,s1,1
    80001dd0:	00c00793          	li	a5,12
    80001dd4:	0297e063          	bltu	a5,s1,80001df4 <_Z22printSlabAllocatorInfov+0xc8>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80001dd8:	00349793          	slli	a5,s1,0x3
    80001ddc:	0000a717          	auipc	a4,0xa
    80001de0:	b3473703          	ld	a4,-1228(a4) # 8000b910 <_ZL13slabAllocator>
    80001de4:	00f707b3          	add	a5,a4,a5
    80001de8:	0087b503          	ld	a0,8(a5)
    80001dec:	fc051ce3          	bnez	a0,80001dc4 <_Z22printSlabAllocatorInfov+0x98>
    80001df0:	fddff06f          	j	80001dcc <_Z22printSlabAllocatorInfov+0xa0>
}
    80001df4:	01813083          	ld	ra,24(sp)
    80001df8:	01013403          	ld	s0,16(sp)
    80001dfc:	00813483          	ld	s1,8(sp)
    80001e00:	02010113          	addi	sp,sp,32
    80001e04:	00008067          	ret

0000000080001e08 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80001e08:	fd010113          	addi	sp,sp,-48
    80001e0c:	02113423          	sd	ra,40(sp)
    80001e10:	02813023          	sd	s0,32(sp)
    80001e14:	00913c23          	sd	s1,24(sp)
    80001e18:	01213823          	sd	s2,16(sp)
    80001e1c:	01313423          	sd	s3,8(sp)
    80001e20:	01413023          	sd	s4,0(sp)
    80001e24:	03010413          	addi	s0,sp,48
    80001e28:	00050993          	mv	s3,a0
    size_t level = getDeg2Ceil(size);
    80001e2c:	00001097          	auipc	ra,0x1
    80001e30:	c9c080e7          	jalr	-868(ra) # 80002ac8 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    80001e34:	00400793          	li	a5,4
    80001e38:	00a7fa63          	bgeu	a5,a0,80001e4c <_Z7kmallocm+0x44>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    80001e3c:	01100793          	li	a5,17
    80001e40:	00a7f863          	bgeu	a5,a0,80001e50 <_Z7kmallocm+0x48>
        return nullptr;
    80001e44:	00000513          	li	a0,0
    80001e48:	0400006f          	j	80001e88 <_Z7kmallocm+0x80>
        level = CACHE_BUFFER_SMALL;
    80001e4c:	00500513          	li	a0,5
    size_t index = level - CACHE_BUFFER_SMALL;
    80001e50:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    80001e54:	0000a917          	auipc	s2,0xa
    80001e58:	abc93903          	ld	s2,-1348(s2) # 8000b910 <_ZL13slabAllocator>
    80001e5c:	00349793          	slli	a5,s1,0x3
    80001e60:	00f907b3          	add	a5,s2,a5
    80001e64:	0087b783          	ld	a5,8(a5)
    80001e68:	04078063          	beqz	a5,80001ea8 <_Z7kmallocm+0xa0>
        strcpy("Cache for small buffers", slabAllocator->cachesBuffers[index]->cacheName);
        slabAllocator->cachesBuffers[index]->obj_size = size;
        slabAllocator->cachesBuffers[index]->slab_size = getOptimalSlabSize(size);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    80001e6c:	00349513          	slli	a0,s1,0x3
    80001e70:	0000a497          	auipc	s1,0xa
    80001e74:	aa04b483          	ld	s1,-1376(s1) # 8000b910 <_ZL13slabAllocator>
    80001e78:	00a48533          	add	a0,s1,a0
    80001e7c:	00853503          	ld	a0,8(a0)
    80001e80:	00000097          	auipc	ra,0x0
    80001e84:	b60080e7          	jalr	-1184(ra) # 800019e0 <_Z16kmem_cache_allocP12kmem_cache_s>
}
    80001e88:	02813083          	ld	ra,40(sp)
    80001e8c:	02013403          	ld	s0,32(sp)
    80001e90:	01813483          	ld	s1,24(sp)
    80001e94:	01013903          	ld	s2,16(sp)
    80001e98:	00813983          	ld	s3,8(sp)
    80001e9c:	00013a03          	ld	s4,0(sp)
    80001ea0:	03010113          	addi	sp,sp,48
    80001ea4:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001ea8:	07090513          	addi	a0,s2,112
    80001eac:	00000097          	auipc	ra,0x0
    80001eb0:	b34080e7          	jalr	-1228(ra) # 800019e0 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001eb4:	00349a13          	slli	s4,s1,0x3
    80001eb8:	01490933          	add	s2,s2,s4
    80001ebc:	00a93423          	sd	a0,8(s2)
        slabAllocator->cachesBuffers[index]->slabs_empty = nullptr;
    80001ec0:	0000a917          	auipc	s2,0xa
    80001ec4:	a5090913          	addi	s2,s2,-1456 # 8000b910 <_ZL13slabAllocator>
    80001ec8:	00093783          	ld	a5,0(s2)
    80001ecc:	014787b3          	add	a5,a5,s4
    80001ed0:	0087b703          	ld	a4,8(a5)
    80001ed4:	04073023          	sd	zero,64(a4)
        slabAllocator->cachesBuffers[index]->slabs_partial = nullptr;
    80001ed8:	0087b703          	ld	a4,8(a5)
    80001edc:	04073823          	sd	zero,80(a4)
        slabAllocator->cachesBuffers[index]->slabs_full = nullptr;
    80001ee0:	0087b703          	ld	a4,8(a5)
    80001ee4:	04073423          	sd	zero,72(a4)
        slabAllocator->cachesBuffers[index]->dtor = nullptr;
    80001ee8:	0087b703          	ld	a4,8(a5)
    80001eec:	06073823          	sd	zero,112(a4)
        slabAllocator->cachesBuffers[index]->ctor = nullptr;
    80001ef0:	0087b703          	ld	a4,8(a5)
    80001ef4:	06073423          	sd	zero,104(a4)
        strcpy("Cache for small buffers", slabAllocator->cachesBuffers[index]->cacheName);
    80001ef8:	0087b583          	ld	a1,8(a5)
    80001efc:	00007517          	auipc	a0,0x7
    80001f00:	32450513          	addi	a0,a0,804 # 80009220 <CONSOLE_STATUS+0x210>
    80001f04:	fffff097          	auipc	ra,0xfffff
    80001f08:	354080e7          	jalr	852(ra) # 80001258 <_Z6strcpyPKcPc>
        slabAllocator->cachesBuffers[index]->obj_size = size;
    80001f0c:	00093783          	ld	a5,0(s2)
    80001f10:	014787b3          	add	a5,a5,s4
    80001f14:	0087b703          	ld	a4,8(a5)
    80001f18:	07373023          	sd	s3,96(a4)
        slabAllocator->cachesBuffers[index]->slab_size = getOptimalSlabSize(size);
    80001f1c:	0087b903          	ld	s2,8(a5)
    80001f20:	00098513          	mv	a0,s3
    80001f24:	fffff097          	auipc	ra,0xfffff
    80001f28:	784080e7          	jalr	1924(ra) # 800016a8 <_Z18getOptimalSlabSizem>
    80001f2c:	04a93c23          	sd	a0,88(s2)
    80001f30:	f3dff06f          	j	80001e6c <_Z7kmallocm+0x64>

0000000080001f34 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    80001f34:	08050263          	beqz	a0,80001fb8 <_Z5kfreePKv+0x84>
{
    80001f38:	fe010113          	addi	sp,sp,-32
    80001f3c:	00113c23          	sd	ra,24(sp)
    80001f40:	00813823          	sd	s0,16(sp)
    80001f44:	00913423          	sd	s1,8(sp)
    80001f48:	01213023          	sd	s2,0(sp)
    80001f4c:	02010413          	addi	s0,sp,32
    80001f50:	00050913          	mv	s2,a0
        return;
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001f54:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    80001f58:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001f5c:	00c00793          	li	a5,12
    80001f60:	0297e863          	bltu	a5,s1,80001f90 <_Z5kfreePKv+0x5c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    80001f64:	00349793          	slli	a5,s1,0x3
    80001f68:	0000a717          	auipc	a4,0xa
    80001f6c:	9a873703          	ld	a4,-1624(a4) # 8000b910 <_ZL13slabAllocator>
    80001f70:	00f707b3          	add	a5,a4,a5
    80001f74:	00090593          	mv	a1,s2
    80001f78:	0087b503          	ld	a0,8(a5)
    80001f7c:	fffff097          	auipc	ra,0xfffff
    80001f80:	794080e7          	jalr	1940(ra) # 80001710 <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    80001f84:	00051663          	bnez	a0,80001f90 <_Z5kfreePKv+0x5c>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001f88:	00148493          	addi	s1,s1,1
    80001f8c:	fd1ff06f          	j	80001f5c <_Z5kfreePKv+0x28>
    }
    if(slab != nullptr)
    80001f90:	00050863          	beqz	a0,80001fa0 <_Z5kfreePKv+0x6c>
    {
        free_slab_object(slab, objp);
    80001f94:	00090593          	mv	a1,s2
    80001f98:	00000097          	auipc	ra,0x0
    80001f9c:	924080e7          	jalr	-1756(ra) # 800018bc <_Z16free_slab_objectP6slab_sPKv>
    }
}
    80001fa0:	01813083          	ld	ra,24(sp)
    80001fa4:	01013403          	ld	s0,16(sp)
    80001fa8:	00813483          	ld	s1,8(sp)
    80001fac:	00013903          	ld	s2,0(sp)
    80001fb0:	02010113          	addi	sp,sp,32
    80001fb4:	00008067          	ret
    80001fb8:	00008067          	ret

0000000080001fbc <_Z17destroy_slab_listP6slab_s>:

int destroy_slab_list(slab_t* slab)
{
    80001fbc:	fd010113          	addi	sp,sp,-48
    80001fc0:	02113423          	sd	ra,40(sp)
    80001fc4:	02813023          	sd	s0,32(sp)
    80001fc8:	00913c23          	sd	s1,24(sp)
    80001fcc:	01213823          	sd	s2,16(sp)
    80001fd0:	01313423          	sd	s3,8(sp)
    80001fd4:	03010413          	addi	s0,sp,48
    if(slab == nullptr) return 0;
    80001fd8:	04050063          	beqz	a0,80002018 <_Z17destroy_slab_listP6slab_s+0x5c>
    80001fdc:	00050593          	mv	a1,a0
    size_t sz = slab->owner->slab_size;
    80001fe0:	01053783          	ld	a5,16(a0)
    80001fe4:	0587b903          	ld	s2,88(a5)
    int totalBlocks = 0;
    80001fe8:	00000493          	li	s1,0
    while(slab != nullptr)
    80001fec:	02058863          	beqz	a1,8000201c <_Z17destroy_slab_listP6slab_s+0x60>
    {
        slab_t* nextSlab = slab->next;
    80001ff0:	0085b983          	ld	s3,8(a1)
        buddy_free(slabAllocator->buddy, slab, sz);
    80001ff4:	00090613          	mv	a2,s2
    80001ff8:	0000a797          	auipc	a5,0xa
    80001ffc:	9187b783          	ld	a5,-1768(a5) # 8000b910 <_ZL13slabAllocator>
    80002000:	0007b503          	ld	a0,0(a5)
    80002004:	00001097          	auipc	ra,0x1
    80002008:	f10080e7          	jalr	-240(ra) # 80002f14 <_Z10buddy_freeP14buddyAllocatorPvm>
        slab = nextSlab;
        totalBlocks+=sz;
    8000200c:	009904bb          	addw	s1,s2,s1
        slab = nextSlab;
    80002010:	00098593          	mv	a1,s3
    while(slab != nullptr)
    80002014:	fd9ff06f          	j	80001fec <_Z17destroy_slab_listP6slab_s+0x30>
    if(slab == nullptr) return 0;
    80002018:	00000493          	li	s1,0
    }
    return totalBlocks;
}
    8000201c:	00048513          	mv	a0,s1
    80002020:	02813083          	ld	ra,40(sp)
    80002024:	02013403          	ld	s0,32(sp)
    80002028:	01813483          	ld	s1,24(sp)
    8000202c:	01013903          	ld	s2,16(sp)
    80002030:	00813983          	ld	s3,8(sp)
    80002034:	03010113          	addi	sp,sp,48
    80002038:	00008067          	ret

000000008000203c <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    8000203c:	fe010113          	addi	sp,sp,-32
    80002040:	00113c23          	sd	ra,24(sp)
    80002044:	00813823          	sd	s0,16(sp)
    80002048:	00913423          	sd	s1,8(sp)
    8000204c:	02010413          	addi	s0,sp,32
    80002050:	00050493          	mv	s1,a0
    destroy_slab_list(cachep->slabs_empty);
    80002054:	04053503          	ld	a0,64(a0)
    80002058:	00000097          	auipc	ra,0x0
    8000205c:	f64080e7          	jalr	-156(ra) # 80001fbc <_Z17destroy_slab_listP6slab_s>
    destroy_slab_list(cachep->slabs_partial);
    80002060:	0504b503          	ld	a0,80(s1)
    80002064:	00000097          	auipc	ra,0x0
    80002068:	f58080e7          	jalr	-168(ra) # 80001fbc <_Z17destroy_slab_listP6slab_s>
    destroy_slab_list(cachep->slabs_full);
    8000206c:	0484b503          	ld	a0,72(s1)
    80002070:	00000097          	auipc	ra,0x0
    80002074:	f4c080e7          	jalr	-180(ra) # 80001fbc <_Z17destroy_slab_listP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    80002078:	00048593          	mv	a1,s1
    8000207c:	0000a517          	auipc	a0,0xa
    80002080:	89453503          	ld	a0,-1900(a0) # 8000b910 <_ZL13slabAllocator>
    80002084:	07050513          	addi	a0,a0,112
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	b20080e7          	jalr	-1248(ra) # 80001ba8 <_Z15kmem_cache_freeP12kmem_cache_sPv>
}
    80002090:	01813083          	ld	ra,24(sp)
    80002094:	01013403          	ld	s0,16(sp)
    80002098:	00813483          	ld	s1,8(sp)
    8000209c:	02010113          	addi	sp,sp,32
    800020a0:	00008067          	ret

00000000800020a4 <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800020a4:	04050063          	beqz	a0,800020e4 <_Z17kmem_cache_shrinkP12kmem_cache_s+0x40>
{
    800020a8:	fe010113          	addi	sp,sp,-32
    800020ac:	00113c23          	sd	ra,24(sp)
    800020b0:	00813823          	sd	s0,16(sp)
    800020b4:	00913423          	sd	s1,8(sp)
    800020b8:	02010413          	addi	s0,sp,32
    800020bc:	00050493          	mv	s1,a0
        return 0;
    int totalBlocks = destroy_slab_list(cachep->slabs_empty);
    800020c0:	04053503          	ld	a0,64(a0)
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	ef8080e7          	jalr	-264(ra) # 80001fbc <_Z17destroy_slab_listP6slab_s>
    cachep->slabs_empty = nullptr;
    800020cc:	0404b023          	sd	zero,64(s1)
    return totalBlocks;
    800020d0:	01813083          	ld	ra,24(sp)
    800020d4:	01013403          	ld	s0,16(sp)
    800020d8:	00813483          	ld	s1,8(sp)
    800020dc:	02010113          	addi	sp,sp,32
    800020e0:	00008067          	ret
        return 0;
    800020e4:	00000513          	li	a0,0
    800020e8:	00008067          	ret

00000000800020ec <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00813423          	sd	s0,8(sp)
    800020f4:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800020f8:	03f50513          	addi	a0,a0,63
    800020fc:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80002100:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80002104:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80002108:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    8000210c:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    80002110:	00813403          	ld	s0,8(sp)
    80002114:	01010113          	addi	sp,sp,16
    80002118:	00008067          	ret

000000008000211c <_Z8mem_freePv>:

int mem_free(void* p)
{
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00813423          	sd	s0,8(sp)
    80002124:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80002128:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    8000212c:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80002130:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002134:	00050513          	mv	a0,a0

    return result;
}
    80002138:	0005051b          	sext.w	a0,a0
    8000213c:	00813403          	ld	s0,8(sp)
    80002140:	01010113          	addi	sp,sp,16
    80002144:	00008067          	ret

0000000080002148 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80002148:	fd010113          	addi	sp,sp,-48
    8000214c:	02113423          	sd	ra,40(sp)
    80002150:	02813023          	sd	s0,32(sp)
    80002154:	00913c23          	sd	s1,24(sp)
    80002158:	01213823          	sd	s2,16(sp)
    8000215c:	01313423          	sd	s3,8(sp)
    80002160:	03010413          	addi	s0,sp,48
    80002164:	00050493          	mv	s1,a0
    80002168:	00058913          	mv	s2,a1
    8000216c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80002170:	00001537          	lui	a0,0x1
    80002174:	00000097          	auipc	ra,0x0
    80002178:	f78080e7          	jalr	-136(ra) # 800020ec <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    8000217c:	04050263          	beqz	a0,800021c0 <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    80002180:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80002184:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80002188:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8000218c:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    80002190:	01100793          	li	a5,17
    80002194:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    80002198:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000219c:	00050513          	mv	a0,a0

    return result;
    800021a0:	0005051b          	sext.w	a0,a0
}
    800021a4:	02813083          	ld	ra,40(sp)
    800021a8:	02013403          	ld	s0,32(sp)
    800021ac:	01813483          	ld	s1,24(sp)
    800021b0:	01013903          	ld	s2,16(sp)
    800021b4:	00813983          	ld	s3,8(sp)
    800021b8:	03010113          	addi	sp,sp,48
    800021bc:	00008067          	ret
        return -1;
    800021c0:	fff00513          	li	a0,-1
    800021c4:	fe1ff06f          	j	800021a4 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

00000000800021c8 <_Z15thread_dispatchv>:

void thread_dispatch()
{
    800021c8:	ff010113          	addi	sp,sp,-16
    800021cc:	00813423          	sd	s0,8(sp)
    800021d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800021d4:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    800021d8:	00000073          	ecall
}
    800021dc:	00813403          	ld	s0,8(sp)
    800021e0:	01010113          	addi	sp,sp,16
    800021e4:	00008067          	ret

00000000800021e8 <_Z11thread_exitv>:

int thread_exit()
{
    800021e8:	ff010113          	addi	sp,sp,-16
    800021ec:	00813423          	sd	s0,8(sp)
    800021f0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    800021f4:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    800021f8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800021fc:	00050513          	mv	a0,a0
    return result;
}
    80002200:	0005051b          	sext.w	a0,a0
    80002204:	00813403          	ld	s0,8(sp)
    80002208:	01010113          	addi	sp,sp,16
    8000220c:	00008067          	ret

0000000080002210 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    80002210:	ff010113          	addi	sp,sp,-16
    80002214:	00813423          	sd	s0,8(sp)
    80002218:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    8000221c:	02059593          	slli	a1,a1,0x20
    80002220:	0205d593          	srli	a1,a1,0x20
    80002224:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002228:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000222c:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    80002230:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002234:	00050513          	mv	a0,a0
    return result;
}
    80002238:	0005051b          	sext.w	a0,a0
    8000223c:	00813403          	ld	s0,8(sp)
    80002240:	01010113          	addi	sp,sp,16
    80002244:	00008067          	ret

0000000080002248 <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    80002248:	ff010113          	addi	sp,sp,-16
    8000224c:	00813423          	sd	s0,8(sp)
    80002250:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002254:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80002258:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    8000225c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002260:	00050513          	mv	a0,a0
    return result;
}
    80002264:	0005051b          	sext.w	a0,a0
    80002268:	00813403          	ld	s0,8(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret

0000000080002274 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    80002274:	ff010113          	addi	sp,sp,-16
    80002278:	00813423          	sd	s0,8(sp)
    8000227c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80002280:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80002284:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    80002288:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000228c:	00050513          	mv	a0,a0
    return result;
}
    80002290:	0005051b          	sext.w	a0,a0
    80002294:	00813403          	ld	s0,8(sp)
    80002298:	01010113          	addi	sp,sp,16
    8000229c:	00008067          	ret

00000000800022a0 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    800022a0:	ff010113          	addi	sp,sp,-16
    800022a4:	00813423          	sd	s0,8(sp)
    800022a8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    800022ac:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800022b0:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    800022b4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800022b8:	00050513          	mv	a0,a0
    return result;
}
    800022bc:	0005051b          	sext.w	a0,a0
    800022c0:	00813403          	ld	s0,8(sp)
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00008067          	ret

00000000800022cc <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00813423          	sd	s0,8(sp)
    800022d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    800022d8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    800022dc:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    800022e0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800022e4:	00050513          	mv	a0,a0
    return result;
}
    800022e8:	0005051b          	sext.w	a0,a0
    800022ec:	00813403          	ld	s0,8(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret

00000000800022f8 <_Z12thread_startPv>:

int thread_start(void* p)
{
    800022f8:	ff010113          	addi	sp,sp,-16
    800022fc:	00813423          	sd	s0,8(sp)
    80002300:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80002304:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80002308:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    8000230c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002310:	00050513          	mv	a0,a0
    return result;
}
    80002314:	0005051b          	sext.w	a0,a0
    80002318:	00813403          	ld	s0,8(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80002324:	fd010113          	addi	sp,sp,-48
    80002328:	02113423          	sd	ra,40(sp)
    8000232c:	02813023          	sd	s0,32(sp)
    80002330:	00913c23          	sd	s1,24(sp)
    80002334:	01213823          	sd	s2,16(sp)
    80002338:	01313423          	sd	s3,8(sp)
    8000233c:	03010413          	addi	s0,sp,48
    80002340:	00050493          	mv	s1,a0
    80002344:	00058913          	mv	s2,a1
    80002348:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000234c:	00001537          	lui	a0,0x1
    80002350:	00000097          	auipc	ra,0x0
    80002354:	d9c080e7          	jalr	-612(ra) # 800020ec <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    80002358:	04050263          	beqz	a0,8000239c <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000235c:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80002360:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80002364:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80002368:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000236c:	01400793          	li	a5,20
    80002370:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80002374:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002378:	00050513          	mv	a0,a0
    return result;
    8000237c:	0005051b          	sext.w	a0,a0
}
    80002380:	02813083          	ld	ra,40(sp)
    80002384:	02013403          	ld	s0,32(sp)
    80002388:	01813483          	ld	s1,24(sp)
    8000238c:	01013903          	ld	s2,16(sp)
    80002390:	00813983          	ld	s3,8(sp)
    80002394:	03010113          	addi	sp,sp,48
    80002398:	00008067          	ret
        return -1;
    8000239c:	fff00513          	li	a0,-1
    800023a0:	fe1ff06f          	j	80002380 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

00000000800023a4 <_Z4getcv>:

char getc()
{
    800023a4:	ff010113          	addi	sp,sp,-16
    800023a8:	00813423          	sd	s0,8(sp)
    800023ac:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800023b0:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    800023b4:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800023b8:	00050513          	mv	a0,a0
    return (char)result;
}
    800023bc:	0ff57513          	andi	a0,a0,255
    800023c0:	00813403          	ld	s0,8(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret

00000000800023cc <_Z4putcc>:

void putc(char c)
{
    800023cc:	ff010113          	addi	sp,sp,-16
    800023d0:	00813423          	sd	s0,8(sp)
    800023d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    800023d8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    800023dc:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    800023e0:	00000073          	ecall
}
    800023e4:	00813403          	ld	s0,8(sp)
    800023e8:	01010113          	addi	sp,sp,16
    800023ec:	00008067          	ret

00000000800023f0 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    800023f0:	ff010113          	addi	sp,sp,-16
    800023f4:	00813423          	sd	s0,8(sp)
    800023f8:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    800023fc:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80002400:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002404:	00050513          	mv	a0,a0
    return (char)result;
}
    80002408:	0ff57513          	andi	a0,a0,255
    8000240c:	00813403          	ld	s0,8(sp)
    80002410:	01010113          	addi	sp,sp,16
    80002414:	00008067          	ret

0000000080002418 <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    80002418:	ff010113          	addi	sp,sp,-16
    8000241c:	00813423          	sd	s0,8(sp)
    80002420:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002424:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    80002428:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    8000242c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002430:	00050513          	mv	a0,a0
    return (char)result;
}
    80002434:	0ff57513          	andi	a0,a0,255
    80002438:	00813403          	ld	s0,8(sp)
    8000243c:	01010113          	addi	sp,sp,16
    80002440:	00008067          	ret

0000000080002444 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00113423          	sd	ra,8(sp)
    8000244c:	00813023          	sd	s0,0(sp)
    80002450:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    80002454:	00000097          	auipc	ra,0x0
    80002458:	fc4080e7          	jalr	-60(ra) # 80002418 <_Z17thread_delete_pcbP7_thread>
    8000245c:	00813083          	ld	ra,8(sp)
    80002460:	00013403          	ld	s0,0(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00113423          	sd	ra,8(sp)
    80002474:	00813023          	sd	s0,0(sp)
    80002478:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    8000247c:	00002097          	auipc	ra,0x2
    80002480:	db8080e7          	jalr	-584(ra) # 80004234 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    80002484:	00009797          	auipc	a5,0x9
    80002488:	4947b783          	ld	a5,1172(a5) # 8000b918 <_ZN3PCB7runningE>
    8000248c:	0287b703          	ld	a4,40(a5)
    80002490:	0307b503          	ld	a0,48(a5)
    80002494:	000700e7          	jalr	a4

    thread_exit();
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	d50080e7          	jalr	-688(ra) # 800021e8 <_Z11thread_exitv>
}
    800024a0:	00813083          	ld	ra,8(sp)
    800024a4:	00013403          	ld	s0,0(sp)
    800024a8:	01010113          	addi	sp,sp,16
    800024ac:	00008067          	ret

00000000800024b0 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800024b0:	ff010113          	addi	sp,sp,-16
    800024b4:	00813423          	sd	s0,8(sp)
    800024b8:	01010413          	addi	s0,sp,16
    })
    800024bc:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    800024c0:	00e53c23          	sd	a4,24(a0)
    800024c4:	02053023          	sd	zero,32(a0)
    800024c8:	02b53423          	sd	a1,40(a0)
    800024cc:	02c53823          	sd	a2,48(a0)
    800024d0:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    800024d4:	000017b7          	lui	a5,0x1
    800024d8:	00f686b3          	add	a3,a3,a5
    })
    800024dc:	04d53423          	sd	a3,72(a0)
    800024e0:	00000797          	auipc	a5,0x0
    800024e4:	f8c78793          	addi	a5,a5,-116 # 8000246c <_ZN3PCB6runnerEv>
    800024e8:	04f53823          	sd	a5,80(a0)
    800024ec:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    800024f0:	00053423          	sd	zero,8(a0)
}
    800024f4:	00813403          	ld	s0,8(sp)
    800024f8:	01010113          	addi	sp,sp,16
    800024fc:	00008067          	ret

0000000080002500 <_ZN3PCB5startEv>:
{
    80002500:	ff010113          	addi	sp,sp,-16
    80002504:	00113423          	sd	ra,8(sp)
    80002508:	00813023          	sd	s0,0(sp)
    8000250c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002510:	00001097          	auipc	ra,0x1
    80002514:	204080e7          	jalr	516(ra) # 80003714 <_ZN9Scheduler3putEP3PCB>
}
    80002518:	00813083          	ld	ra,8(sp)
    8000251c:	00013403          	ld	s0,0(sp)
    80002520:	01010113          	addi	sp,sp,16
    80002524:	00008067          	ret

0000000080002528 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002528:	fe010113          	addi	sp,sp,-32
    8000252c:	00113c23          	sd	ra,24(sp)
    80002530:	00813823          	sd	s0,16(sp)
    80002534:	00913423          	sd	s1,8(sp)
    80002538:	01213023          	sd	s2,0(sp)
    8000253c:	02010413          	addi	s0,sp,32
    PCB* old = running;
    80002540:	00009497          	auipc	s1,0x9
    80002544:	3d84b483          	ld	s1,984(s1) # 8000b918 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002548:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    8000254c:	00100793          	li	a5,1
    80002550:	04f70a63          	beq	a4,a5,800025a4 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    80002554:	00001097          	auipc	ra,0x1
    80002558:	214080e7          	jalr	532(ra) # 80003768 <_ZN9Scheduler3getEv>
    8000255c:	00009917          	auipc	s2,0x9
    80002560:	3bc90913          	addi	s2,s2,956 # 8000b918 <_ZN3PCB7runningE>
    80002564:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    80002568:	00100793          	li	a5,1
    8000256c:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    80002570:	00002097          	auipc	ra,0x2
    80002574:	ddc080e7          	jalr	-548(ra) # 8000434c <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    80002578:	00093583          	ld	a1,0(s2)
    8000257c:	04858593          	addi	a1,a1,72
    80002580:	04848513          	addi	a0,s1,72
    80002584:	fffff097          	auipc	ra,0xfffff
    80002588:	cb4080e7          	jalr	-844(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    8000258c:	01813083          	ld	ra,24(sp)
    80002590:	01013403          	ld	s0,16(sp)
    80002594:	00813483          	ld	s1,8(sp)
    80002598:	00013903          	ld	s2,0(sp)
    8000259c:	02010113          	addi	sp,sp,32
    800025a0:	00008067          	ret
        Scheduler::put(old);
    800025a4:	00048513          	mv	a0,s1
    800025a8:	00001097          	auipc	ra,0x1
    800025ac:	16c080e7          	jalr	364(ra) # 80003714 <_ZN9Scheduler3putEP3PCB>
    800025b0:	fa5ff06f          	j	80002554 <_ZN3PCB8dispatchEv+0x2c>

00000000800025b4 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800025b4:	ff010113          	addi	sp,sp,-16
    800025b8:	00113423          	sd	ra,8(sp)
    800025bc:	00813023          	sd	s0,0(sp)
    800025c0:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    800025c4:	00009797          	auipc	a5,0x9
    800025c8:	2f47b783          	ld	a5,756(a5) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x90>
    800025cc:	0007b503          	ld	a0,0(a5)
    800025d0:	fffff097          	auipc	ra,0xfffff
    800025d4:	410080e7          	jalr	1040(ra) # 800019e0 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    800025d8:	00813083          	ld	ra,8(sp)
    800025dc:	00013403          	ld	s0,0(sp)
    800025e0:	01010113          	addi	sp,sp,16
    800025e4:	00008067          	ret

00000000800025e8 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    800025e8:	ff010113          	addi	sp,sp,-16
    800025ec:	00113423          	sd	ra,8(sp)
    800025f0:	00813023          	sd	s0,0(sp)
    800025f4:	01010413          	addi	s0,sp,16
    800025f8:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    800025fc:	00009797          	auipc	a5,0x9
    80002600:	2bc7b783          	ld	a5,700(a5) # 8000b8b8 <_GLOBAL_OFFSET_TABLE_+0x90>
    80002604:	0007b503          	ld	a0,0(a5)
    80002608:	fffff097          	auipc	ra,0xfffff
    8000260c:	5a0080e7          	jalr	1440(ra) # 80001ba8 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80002610:	00813083          	ld	ra,8(sp)
    80002614:	00013403          	ld	s0,0(sp)
    80002618:	01010113          	addi	sp,sp,16
    8000261c:	00008067          	ret

0000000080002620 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00113423          	sd	ra,8(sp)
    80002628:	00813023          	sd	s0,0(sp)
    8000262c:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80002630:	03853503          	ld	a0,56(a0)
    80002634:	00002097          	auipc	ra,0x2
    80002638:	448080e7          	jalr	1096(ra) # 80004a7c <_ZN15MemoryAllocator5kfreeEPv>
}
    8000263c:	00813083          	ld	ra,8(sp)
    80002640:	00013403          	ld	s0,0(sp)
    80002644:	01010113          	addi	sp,sp,16
    80002648:	00008067          	ret

000000008000264c <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    8000264c:	fd010113          	addi	sp,sp,-48
    80002650:	02113423          	sd	ra,40(sp)
    80002654:	02813023          	sd	s0,32(sp)
    80002658:	00913c23          	sd	s1,24(sp)
    8000265c:	01213823          	sd	s2,16(sp)
    80002660:	01313423          	sd	s3,8(sp)
    80002664:	01413023          	sd	s4,0(sp)
    80002668:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    8000266c:	06000513          	li	a0,96
    80002670:	00000097          	auipc	ra,0x0
    80002674:	f44080e7          	jalr	-188(ra) # 800025b4 <_ZN3PCBnwEm>
    80002678:	00050493          	mv	s1,a0
    8000267c:	00000713          	li	a4,0
    80002680:	00000693          	li	a3,0
    80002684:	00000613          	li	a2,0
    80002688:	00000593          	li	a1,0
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	e24080e7          	jalr	-476(ra) # 800024b0 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    80002694:	00100793          	li	a5,1
    80002698:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    8000269c:	00009917          	auipc	s2,0x9
    800026a0:	27c90913          	addi	s2,s2,636 # 8000b918 <_ZN3PCB7runningE>
    800026a4:	00993023          	sd	s1,0(s2)
    800026a8:	00100a13          	li	s4,1
    800026ac:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    800026b0:	00001537          	lui	a0,0x1
    800026b4:	00002097          	auipc	ra,0x2
    800026b8:	364080e7          	jalr	868(ra) # 80004a18 <_ZN15MemoryAllocator7kmallocEm>
    800026bc:	00050993          	mv	s3,a0
    800026c0:	06000513          	li	a0,96
    800026c4:	00000097          	auipc	ra,0x0
    800026c8:	ef0080e7          	jalr	-272(ra) # 800025b4 <_ZN3PCBnwEm>
    800026cc:	00050493          	mv	s1,a0
    800026d0:	00200713          	li	a4,2
    800026d4:	00098693          	mv	a3,s3
    800026d8:	00000613          	li	a2,0
    800026dc:	00009597          	auipc	a1,0x9
    800026e0:	1a45b583          	ld	a1,420(a1) # 8000b880 <_GLOBAL_OFFSET_TABLE_+0x58>
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	dcc080e7          	jalr	-564(ra) # 800024b0 <_ZN3PCBC1EPFvPvES0_S0_m>
    800026ec:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    800026f0:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    800026f4:	00893503          	ld	a0,8(s2)
    800026f8:	00000097          	auipc	ra,0x0
    800026fc:	e08080e7          	jalr	-504(ra) # 80002500 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002700:	00001537          	lui	a0,0x1
    80002704:	00002097          	auipc	ra,0x2
    80002708:	314080e7          	jalr	788(ra) # 80004a18 <_ZN15MemoryAllocator7kmallocEm>
    8000270c:	00050993          	mv	s3,a0
    80002710:	06000513          	li	a0,96
    80002714:	00000097          	auipc	ra,0x0
    80002718:	ea0080e7          	jalr	-352(ra) # 800025b4 <_ZN3PCBnwEm>
    8000271c:	00050493          	mv	s1,a0
    80002720:	00200713          	li	a4,2
    80002724:	00098693          	mv	a3,s3
    80002728:	00000613          	li	a2,0
    8000272c:	00009597          	auipc	a1,0x9
    80002730:	1845b583          	ld	a1,388(a1) # 8000b8b0 <_GLOBAL_OFFSET_TABLE_+0x88>
    80002734:	00000097          	auipc	ra,0x0
    80002738:	d7c080e7          	jalr	-644(ra) # 800024b0 <_ZN3PCBC1EPFvPvES0_S0_m>
    8000273c:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    80002740:	00048513          	mv	a0,s1
    80002744:	00000097          	auipc	ra,0x0
    80002748:	dbc080e7          	jalr	-580(ra) # 80002500 <_ZN3PCB5startEv>
}
    8000274c:	02813083          	ld	ra,40(sp)
    80002750:	02013403          	ld	s0,32(sp)
    80002754:	01813483          	ld	s1,24(sp)
    80002758:	01013903          	ld	s2,16(sp)
    8000275c:	00813983          	ld	s3,8(sp)
    80002760:	00013a03          	ld	s4,0(sp)
    80002764:	03010113          	addi	sp,sp,48
    80002768:	00008067          	ret

000000008000276c <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    8000276c:	ff010113          	addi	sp,sp,-16
    80002770:	00813423          	sd	s0,8(sp)
    80002774:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002778:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    8000277c:	ffd50513          	addi	a0,a0,-3
}
    80002780:	00153513          	seqz	a0,a0
    80002784:	00813403          	ld	s0,8(sp)
    80002788:	01010113          	addi	sp,sp,16
    8000278c:	00008067          	ret

0000000080002790 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002790:	ff010113          	addi	sp,sp,-16
    80002794:	00113423          	sd	ra,8(sp)
    80002798:	00813023          	sd	s0,0(sp)
    8000279c:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800027a0:	00009797          	auipc	a5,0x9
    800027a4:	17878793          	addi	a5,a5,376 # 8000b918 <_ZN3PCB7runningE>
    800027a8:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800027ac:	0007b783          	ld	a5,0(a5)
    800027b0:	00300713          	li	a4,3
    800027b4:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	d70080e7          	jalr	-656(ra) # 80002528 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800027c0:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800027c4:	00002097          	auipc	ra,0x2
    800027c8:	b50080e7          	jalr	-1200(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    800027cc:	00813083          	ld	ra,8(sp)
    800027d0:	00013403          	ld	s0,0(sp)
    800027d4:	01010113          	addi	sp,sp,16
    800027d8:	00008067          	ret

00000000800027dc <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    800027dc:	ff010113          	addi	sp,sp,-16
    800027e0:	00113423          	sd	ra,8(sp)
    800027e4:	00813023          	sd	s0,0(sp)
    800027e8:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800027ec:	00009797          	auipc	a5,0x9
    800027f0:	1407b223          	sd	zero,324(a5) # 8000b930 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    800027f4:	00000097          	auipc	ra,0x0
    800027f8:	d34080e7          	jalr	-716(ra) # 80002528 <_ZN3PCB8dispatchEv>
}
    800027fc:	00813083          	ld	ra,8(sp)
    80002800:	00013403          	ld	s0,0(sp)
    80002804:	01010113          	addi	sp,sp,16
    80002808:	00008067          	ret

000000008000280c <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    8000280c:	ff010113          	addi	sp,sp,-16
    80002810:	00113423          	sd	ra,8(sp)
    80002814:	00813023          	sd	s0,0(sp)
    80002818:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    8000281c:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002820:	00009717          	auipc	a4,0x9
    80002824:	0f870713          	addi	a4,a4,248 # 8000b918 <_ZN3PCB7runningE>
    80002828:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    8000282c:	00073703          	ld	a4,0(a4)
    80002830:	00009697          	auipc	a3,0x9
    80002834:	0486b683          	ld	a3,72(a3) # 8000b878 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002838:	0006b683          	ld	a3,0(a3)
    8000283c:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002840:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002844:	00001097          	auipc	ra,0x1
    80002848:	d54080e7          	jalr	-684(ra) # 80003598 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	cdc080e7          	jalr	-804(ra) # 80002528 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002854:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002858:	00002097          	auipc	ra,0x2
    8000285c:	abc080e7          	jalr	-1348(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002860:	00813083          	ld	ra,8(sp)
    80002864:	00013403          	ld	s0,0(sp)
    80002868:	01010113          	addi	sp,sp,16
    8000286c:	00008067          	ret

0000000080002870 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002870:	fd010113          	addi	sp,sp,-48
    80002874:	02113423          	sd	ra,40(sp)
    80002878:	02813023          	sd	s0,32(sp)
    8000287c:	00913c23          	sd	s1,24(sp)
    80002880:	01213823          	sd	s2,16(sp)
    80002884:	01313423          	sd	s3,8(sp)
    80002888:	01413023          	sd	s4,0(sp)
    8000288c:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002890:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002894:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002898:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    8000289c:	06000513          	li	a0,96
    800028a0:	00000097          	auipc	ra,0x0
    800028a4:	d14080e7          	jalr	-748(ra) # 800025b4 <_ZN3PCBnwEm>
    800028a8:	00050493          	mv	s1,a0
    800028ac:	00200713          	li	a4,2
    800028b0:	00009697          	auipc	a3,0x9
    800028b4:	0886b683          	ld	a3,136(a3) # 8000b938 <_ZN3PCB10savedRegA4E>
    800028b8:	000a0613          	mv	a2,s4
    800028bc:	00098593          	mv	a1,s3
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	bf0080e7          	jalr	-1040(ra) # 800024b0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800028c8:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800028cc:	02048e63          	beqz	s1,80002908 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    800028d0:	00048513          	mv	a0,s1
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	c2c080e7          	jalr	-980(ra) # 80002500 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    800028dc:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    800028e0:	00002097          	auipc	ra,0x2
    800028e4:	a34080e7          	jalr	-1484(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    800028e8:	02813083          	ld	ra,40(sp)
    800028ec:	02013403          	ld	s0,32(sp)
    800028f0:	01813483          	ld	s1,24(sp)
    800028f4:	01013903          	ld	s2,16(sp)
    800028f8:	00813983          	ld	s3,8(sp)
    800028fc:	00013a03          	ld	s4,0(sp)
    80002900:	03010113          	addi	sp,sp,48
    80002904:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002908:	fff00513          	li	a0,-1
    8000290c:	fd5ff06f          	j	800028e0 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002910 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002910:	ff010113          	addi	sp,sp,-16
    80002914:	00113423          	sd	ra,8(sp)
    80002918:	00813023          	sd	s0,0(sp)
    8000291c:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002920:	00058513          	mv	a0,a1
    if(pcb != 0)
    80002924:	02050463          	beqz	a0,8000294c <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	bd8080e7          	jalr	-1064(ra) # 80002500 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002930:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    80002934:	00002097          	auipc	ra,0x2
    80002938:	9e0080e7          	jalr	-1568(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000293c:	00813083          	ld	ra,8(sp)
    80002940:	00013403          	ld	s0,0(sp)
    80002944:	01010113          	addi	sp,sp,16
    80002948:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    8000294c:	fff00513          	li	a0,-1
    80002950:	fe5ff06f          	j	80002934 <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002954 <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002954:	fd010113          	addi	sp,sp,-48
    80002958:	02113423          	sd	ra,40(sp)
    8000295c:	02813023          	sd	s0,32(sp)
    80002960:	00913c23          	sd	s1,24(sp)
    80002964:	01213823          	sd	s2,16(sp)
    80002968:	01313423          	sd	s3,8(sp)
    8000296c:	01413023          	sd	s4,0(sp)
    80002970:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002974:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002978:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    8000297c:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    80002980:	06000513          	li	a0,96
    80002984:	00000097          	auipc	ra,0x0
    80002988:	c30080e7          	jalr	-976(ra) # 800025b4 <_ZN3PCBnwEm>
    8000298c:	00050493          	mv	s1,a0
    80002990:	00200713          	li	a4,2
    80002994:	00009697          	auipc	a3,0x9
    80002998:	fa46b683          	ld	a3,-92(a3) # 8000b938 <_ZN3PCB10savedRegA4E>
    8000299c:	000a0613          	mv	a2,s4
    800029a0:	00098593          	mv	a1,s3
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	b0c080e7          	jalr	-1268(ra) # 800024b0 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800029ac:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800029b0:	02048863          	beqz	s1,800029e0 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    800029b4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800029b8:	00002097          	auipc	ra,0x2
    800029bc:	95c080e7          	jalr	-1700(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    800029c0:	02813083          	ld	ra,40(sp)
    800029c4:	02013403          	ld	s0,32(sp)
    800029c8:	01813483          	ld	s1,24(sp)
    800029cc:	01013903          	ld	s2,16(sp)
    800029d0:	00813983          	ld	s3,8(sp)
    800029d4:	00013a03          	ld	s4,0(sp)
    800029d8:	03010113          	addi	sp,sp,48
    800029dc:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    800029e0:	fff00513          	li	a0,-1
    800029e4:	fd5ff06f          	j	800029b8 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

00000000800029e8 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    800029e8:	fe010113          	addi	sp,sp,-32
    800029ec:	00113c23          	sd	ra,24(sp)
    800029f0:	00813823          	sd	s0,16(sp)
    800029f4:	00913423          	sd	s1,8(sp)
    800029f8:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    800029fc:	00058493          	mv	s1,a1
    if(pcb != 0)
    80002a00:	02048e63          	beqz	s1,80002a3c <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002a04:	00048513          	mv	a0,s1
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	c18080e7          	jalr	-1000(ra) # 80002620 <_ZN3PCBD1Ev>
    80002a10:	00048513          	mv	a0,s1
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	bd4080e7          	jalr	-1068(ra) # 800025e8 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002a1c:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002a20:	00002097          	auipc	ra,0x2
    80002a24:	8f4080e7          	jalr	-1804(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002a28:	01813083          	ld	ra,24(sp)
    80002a2c:	01013403          	ld	s0,16(sp)
    80002a30:	00813483          	ld	s1,8(sp)
    80002a34:	02010113          	addi	sp,sp,32
    80002a38:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002a3c:	00100513          	li	a0,1
    80002a40:	fe1ff06f          	j	80002a20 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002a44 <_Z12getBlockAddrm>:
    size_t level = getDeg2Ceil(numOfBlocks);
    addBlocks(buddy, addr, level); //adds free blocks
}

size_t getBlockAddr(size_t addr)
{
    80002a44:	ff010113          	addi	sp,sp,-16
    80002a48:	00813423          	sd	s0,8(sp)
    80002a4c:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002a50:	fffff7b7          	lui	a5,0xfffff
    80002a54:	00f57533          	and	a0,a0,a5
    80002a58:	00813403          	ld	s0,8(sp)
    80002a5c:	01010113          	addi	sp,sp,16
    80002a60:	00008067          	ret

0000000080002a64 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00113423          	sd	ra,8(sp)
    80002a6c:	00813023          	sd	s0,0(sp)
    80002a70:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	fd0080e7          	jalr	-48(ra) # 80002a44 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002a7c:	000017b7          	lui	a5,0x1
    80002a80:	00f50533          	add	a0,a0,a5
    80002a84:	00813083          	ld	ra,8(sp)
    80002a88:	00013403          	ld	s0,0(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret

0000000080002a94 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002a94:	ff010113          	addi	sp,sp,-16
    80002a98:	00813423          	sd	s0,8(sp)
    80002a9c:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002aa0:	00000713          	li	a4,0
    size_t x = 1;
    80002aa4:	00100793          	li	a5,1
    while(x <= num)
    80002aa8:	00f56863          	bltu	a0,a5,80002ab8 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002aac:	00170713          	addi	a4,a4,1
        x<<=1;
    80002ab0:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002ab4:	ff5ff06f          	j	80002aa8 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    80002ab8:	fff70513          	addi	a0,a4,-1
    80002abc:	00813403          	ld	s0,8(sp)
    80002ac0:	01010113          	addi	sp,sp,16
    80002ac4:	00008067          	ret

0000000080002ac8 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002ac8:	ff010113          	addi	sp,sp,-16
    80002acc:	00813423          	sd	s0,8(sp)
    80002ad0:	01010413          	addi	s0,sp,16
    80002ad4:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002ad8:	00000513          	li	a0,0
    size_t x = 1;
    80002adc:	00100793          	li	a5,1
    while(x < num)
    80002ae0:	00e7f863          	bgeu	a5,a4,80002af0 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002ae4:	00150513          	addi	a0,a0,1
        x<<=1;
    80002ae8:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002aec:	ff5ff06f          	j	80002ae0 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002af0:	00813403          	ld	s0,8(sp)
    80002af4:	01010113          	addi	sp,sp,16
    80002af8:	00008067          	ret

0000000080002afc <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002afc:	ff010113          	addi	sp,sp,-16
    80002b00:	00813423          	sd	s0,8(sp)
    80002b04:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002b08:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002b0c:	00260793          	addi	a5,a2,2
    80002b10:	00479793          	slli	a5,a5,0x4
    80002b14:	00f507b3          	add	a5,a0,a5
    80002b18:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002b1c:	02078463          	beqz	a5,80002b44 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002b20:	00260613          	addi	a2,a2,2
    80002b24:	00461613          	slli	a2,a2,0x4
    80002b28:	00c50633          	add	a2,a0,a2
    80002b2c:	00863783          	ld	a5,8(a2)
    80002b30:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    80002b34:	00b63423          	sd	a1,8(a2)
    }
}
    80002b38:	00813403          	ld	s0,8(sp)
    80002b3c:	01010113          	addi	sp,sp,16
    80002b40:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002b44:	00260613          	addi	a2,a2,2
    80002b48:	00461613          	slli	a2,a2,0x4
    80002b4c:	00c50633          	add	a2,a0,a2
    80002b50:	00b63423          	sd	a1,8(a2)
    80002b54:	00b63023          	sd	a1,0(a2)
    80002b58:	fe1ff06f          	j	80002b38 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080002b5c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    80002b5c:	ff010113          	addi	sp,sp,-16
    80002b60:	00813423          	sd	s0,8(sp)
    80002b64:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002b68:	000017b7          	lui	a5,0x1
    80002b6c:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002b70:	00853783          	ld	a5,8(a0)
    80002b74:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    80002b78:	00f677b3          	and	a5,a2,a5
    80002b7c:	00078a63          	beqz	a5,80002b90 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    80002b80:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    80002b84:	00813403          	ld	s0,8(sp)
    80002b88:	01010113          	addi	sp,sp,16
    80002b8c:	00008067          	ret
        return (size_t)addr + diff;
    80002b90:	00c58533          	add	a0,a1,a2
    80002b94:	ff1ff06f          	j	80002b84 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

0000000080002b98 <_Z5splitP14buddyAllocatorPvmmb>:
{
    80002b98:	fd010113          	addi	sp,sp,-48
    80002b9c:	02113423          	sd	ra,40(sp)
    80002ba0:	02813023          	sd	s0,32(sp)
    80002ba4:	00913c23          	sd	s1,24(sp)
    80002ba8:	01213823          	sd	s2,16(sp)
    80002bac:	01313423          	sd	s3,8(sp)
    80002bb0:	01413023          	sd	s4,0(sp)
    80002bb4:	03010413          	addi	s0,sp,48
    80002bb8:	00050913          	mv	s2,a0
    80002bbc:	00058a13          	mv	s4,a1
    if(!splitMore)
    80002bc0:	06070a63          	beqz	a4,80002c34 <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    80002bc4:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002bc8:	04c68663          	beq	a3,a2,80002c14 <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002bcc:	fff68493          	addi	s1,a3,-1
    80002bd0:	00048613          	mv	a2,s1
    80002bd4:	00000097          	auipc	ra,0x0
    80002bd8:	f88080e7          	jalr	-120(ra) # 80002b5c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002bdc:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002be0:	00000713          	li	a4,0
    80002be4:	00048693          	mv	a3,s1
    80002be8:	00098613          	mv	a2,s3
    80002bec:	00090513          	mv	a0,s2
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	fa8080e7          	jalr	-88(ra) # 80002b98 <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002bf8:	00100713          	li	a4,1
    80002bfc:	00048693          	mv	a3,s1
    80002c00:	00098613          	mv	a2,s3
    80002c04:	000a0593          	mv	a1,s4
    80002c08:	00090513          	mv	a0,s2
    80002c0c:	00000097          	auipc	ra,0x0
    80002c10:	f8c080e7          	jalr	-116(ra) # 80002b98 <_Z5splitP14buddyAllocatorPvmmb>
}
    80002c14:	02813083          	ld	ra,40(sp)
    80002c18:	02013403          	ld	s0,32(sp)
    80002c1c:	01813483          	ld	s1,24(sp)
    80002c20:	01013903          	ld	s2,16(sp)
    80002c24:	00813983          	ld	s3,8(sp)
    80002c28:	00013a03          	ld	s4,0(sp)
    80002c2c:	03010113          	addi	sp,sp,48
    80002c30:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    80002c34:	00068613          	mv	a2,a3
    80002c38:	00000097          	auipc	ra,0x0
    80002c3c:	ec4080e7          	jalr	-316(ra) # 80002afc <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002c40:	fd5ff06f          	j	80002c14 <_Z5splitP14buddyAllocatorPvmmb+0x7c>

0000000080002c44 <_Z11buddy_allocP14buddyAllocatorm>:
{
    80002c44:	fe010113          	addi	sp,sp,-32
    80002c48:	00113c23          	sd	ra,24(sp)
    80002c4c:	00813823          	sd	s0,16(sp)
    80002c50:	00913423          	sd	s1,8(sp)
    80002c54:	01213023          	sd	s2,0(sp)
    80002c58:	02010413          	addi	s0,sp,32
    80002c5c:	00050493          	mv	s1,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80002c60:	00058513          	mv	a0,a1
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	e64080e7          	jalr	-412(ra) # 80002ac8 <_Z11getDeg2Ceilm>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002c6c:	00050693          	mv	a3,a0
    80002c70:	0184b783          	ld	a5,24(s1)
    80002c74:	06d7e463          	bltu	a5,a3,80002cdc <_Z11buddy_allocP14buddyAllocatorm+0x98>
        if(buddy->bucket[i].first != nullptr)
    80002c78:	00268793          	addi	a5,a3,2
    80002c7c:	00479793          	slli	a5,a5,0x4
    80002c80:	00f487b3          	add	a5,s1,a5
    80002c84:	0007b903          	ld	s2,0(a5) # 1000 <_entry-0x7ffff000>
    80002c88:	00091663          	bnez	s2,80002c94 <_Z11buddy_allocP14buddyAllocatorm+0x50>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002c8c:	00168693          	addi	a3,a3,1
    80002c90:	fe1ff06f          	j	80002c70 <_Z11buddy_allocP14buddyAllocatorm+0x2c>
            buddy->bucket[i].first = ret->next;
    80002c94:	00093703          	ld	a4,0(s2)
    80002c98:	00268793          	addi	a5,a3,2
    80002c9c:	00479793          	slli	a5,a5,0x4
    80002ca0:	00f487b3          	add	a5,s1,a5
    80002ca4:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002ca8:	02070063          	beqz	a4,80002cc8 <_Z11buddy_allocP14buddyAllocatorm+0x84>
            split(buddy, (void*)ret, level, i, true);
    80002cac:	00100713          	li	a4,1
    80002cb0:	00050613          	mv	a2,a0
    80002cb4:	00090593          	mv	a1,s2
    80002cb8:	00048513          	mv	a0,s1
    80002cbc:	00000097          	auipc	ra,0x0
    80002cc0:	edc080e7          	jalr	-292(ra) # 80002b98 <_Z5splitP14buddyAllocatorPvmmb>
            return ret;
    80002cc4:	01c0006f          	j	80002ce0 <_Z11buddy_allocP14buddyAllocatorm+0x9c>
                buddy->bucket[i].last = nullptr;
    80002cc8:	00268793          	addi	a5,a3,2
    80002ccc:	00479793          	slli	a5,a5,0x4
    80002cd0:	00f487b3          	add	a5,s1,a5
    80002cd4:	0007b423          	sd	zero,8(a5)
    80002cd8:	fd5ff06f          	j	80002cac <_Z11buddy_allocP14buddyAllocatorm+0x68>
    return nullptr;
    80002cdc:	00000913          	li	s2,0
}
    80002ce0:	00090513          	mv	a0,s2
    80002ce4:	01813083          	ld	ra,24(sp)
    80002ce8:	01013403          	ld	s0,16(sp)
    80002cec:	00813483          	ld	s1,8(sp)
    80002cf0:	00013903          	ld	s2,0(sp)
    80002cf4:	02010113          	addi	sp,sp,32
    80002cf8:	00008067          	ret

0000000080002cfc <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002cfc:	fd010113          	addi	sp,sp,-48
    80002d00:	02113423          	sd	ra,40(sp)
    80002d04:	02813023          	sd	s0,32(sp)
    80002d08:	00913c23          	sd	s1,24(sp)
    80002d0c:	01213823          	sd	s2,16(sp)
    80002d10:	01313423          	sd	s3,8(sp)
    80002d14:	03010413          	addi	s0,sp,48
    80002d18:	00050493          	mv	s1,a0
    80002d1c:	00058993          	mv	s3,a1
    80002d20:	00060913          	mv	s2,a2
    if(level == buddy->maxLevel)
    80002d24:	01853783          	ld	a5,24(a0)
    80002d28:	02c78a63          	beq	a5,a2,80002d5c <_Z9addBlocksP14buddyAllocatorPvm+0x60>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002d2c:	00000097          	auipc	ra,0x0
    80002d30:	e30080e7          	jalr	-464(ra) # 80002b5c <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80002d34:	00290793          	addi	a5,s2,2
    80002d38:	00479793          	slli	a5,a5,0x4
    80002d3c:	00f487b3          	add	a5,s1,a5
    80002d40:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002d44:	00000713          	li	a4,0
    while(curr != nullptr)
    80002d48:	0a078e63          	beqz	a5,80002e04 <_Z9addBlocksP14buddyAllocatorPvm+0x108>
        if((size_t)curr == buddyBlockAddr)
    80002d4c:	00a78e63          	beq	a5,a0,80002d68 <_Z9addBlocksP14buddyAllocatorPvm+0x6c>
        prev = curr;
    80002d50:	00078713          	mv	a4,a5
        curr = curr->next;
    80002d54:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002d58:	ff1ff06f          	j	80002d48 <_Z9addBlocksP14buddyAllocatorPvm+0x4c>
        addBlockToLevel(buddy, addr, level);
    80002d5c:	00000097          	auipc	ra,0x0
    80002d60:	da0080e7          	jalr	-608(ra) # 80002afc <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002d64:	0b40006f          	j	80002e18 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
            if(prev != nullptr)
    80002d68:	04070863          	beqz	a4,80002db8 <_Z9addBlocksP14buddyAllocatorPvm+0xbc>
                prev->next = curr->next;
    80002d6c:	0007b683          	ld	a3,0(a5)
    80002d70:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002d74:	00290693          	addi	a3,s2,2
    80002d78:	00469693          	slli	a3,a3,0x4
    80002d7c:	00d486b3          	add	a3,s1,a3
    80002d80:	0086b683          	ld	a3,8(a3)
    80002d84:	02f68063          	beq	a3,a5,80002da4 <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002d88:	06a9f263          	bgeu	s3,a0,80002dec <_Z9addBlocksP14buddyAllocatorPvm+0xf0>
    80002d8c:	00190613          	addi	a2,s2,1
    80002d90:	00098593          	mv	a1,s3
    80002d94:	00048513          	mv	a0,s1
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	f64080e7          	jalr	-156(ra) # 80002cfc <_Z9addBlocksP14buddyAllocatorPvm>
    80002da0:	0780006f          	j	80002e18 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
                    buddy->bucket[level].last = prev;
    80002da4:	00290793          	addi	a5,s2,2
    80002da8:	00479793          	slli	a5,a5,0x4
    80002dac:	00f487b3          	add	a5,s1,a5
    80002db0:	00e7b423          	sd	a4,8(a5)
    80002db4:	fd5ff06f          	j	80002d88 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                if(curr->next == nullptr)
    80002db8:	0007b703          	ld	a4,0(a5)
    80002dbc:	00070c63          	beqz	a4,80002dd4 <_Z9addBlocksP14buddyAllocatorPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80002dc0:	00290793          	addi	a5,s2,2
    80002dc4:	00479793          	slli	a5,a5,0x4
    80002dc8:	00f487b3          	add	a5,s1,a5
    80002dcc:	00e7b023          	sd	a4,0(a5)
    80002dd0:	fb9ff06f          	j	80002d88 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002dd4:	00290793          	addi	a5,s2,2
    80002dd8:	00479793          	slli	a5,a5,0x4
    80002ddc:	00f487b3          	add	a5,s1,a5
    80002de0:	0007b423          	sd	zero,8(a5)
    80002de4:	0007b023          	sd	zero,0(a5)
    80002de8:	fa1ff06f          	j	80002d88 <_Z9addBlocksP14buddyAllocatorPvm+0x8c>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    80002dec:	00190613          	addi	a2,s2,1
    80002df0:	00050593          	mv	a1,a0
    80002df4:	00048513          	mv	a0,s1
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	f04080e7          	jalr	-252(ra) # 80002cfc <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80002e00:	0180006f          	j	80002e18 <_Z9addBlocksP14buddyAllocatorPvm+0x11c>
    addBlockToLevel(buddy, addr, level);
    80002e04:	00090613          	mv	a2,s2
    80002e08:	00098593          	mv	a1,s3
    80002e0c:	00048513          	mv	a0,s1
    80002e10:	00000097          	auipc	ra,0x0
    80002e14:	cec080e7          	jalr	-788(ra) # 80002afc <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80002e18:	02813083          	ld	ra,40(sp)
    80002e1c:	02013403          	ld	s0,32(sp)
    80002e20:	01813483          	ld	s1,24(sp)
    80002e24:	01013903          	ld	s2,16(sp)
    80002e28:	00813983          	ld	s3,8(sp)
    80002e2c:	03010113          	addi	sp,sp,48
    80002e30:	00008067          	ret

0000000080002e34 <_Z10buddy_initPvm>:
{
    80002e34:	fd010113          	addi	sp,sp,-48
    80002e38:	02113423          	sd	ra,40(sp)
    80002e3c:	02813023          	sd	s0,32(sp)
    80002e40:	00913c23          	sd	s1,24(sp)
    80002e44:	01213823          	sd	s2,16(sp)
    80002e48:	01313423          	sd	s3,8(sp)
    80002e4c:	03010413          	addi	s0,sp,48
    80002e50:	00058993          	mv	s3,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80002e54:	00050493          	mv	s1,a0
    80002e58:	00000097          	auipc	ra,0x0
    80002e5c:	bec080e7          	jalr	-1044(ra) # 80002a44 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    80002e60:	00a48a63          	beq	s1,a0,80002e74 <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	c00080e7          	jalr	-1024(ra) # 80002a64 <_Z16getNextBlockAddrm>
    80002e6c:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    80002e70:	fff98993          	addi	s3,s3,-1
    numOfBlocks--; // take one block for buddy metadata
    80002e74:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80002e78:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002e7c:	00048513          	mv	a0,s1
    80002e80:	00000097          	auipc	ra,0x0
    80002e84:	be4080e7          	jalr	-1052(ra) # 80002a64 <_Z16getNextBlockAddrm>
    80002e88:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    80002e8c:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002e90:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002e94:	00098513          	mv	a0,s3
    80002e98:	00000097          	auipc	ra,0x0
    80002e9c:	bfc080e7          	jalr	-1028(ra) # 80002a94 <_Z12getDeg2Floorm>
    80002ea0:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002ea4:	00000713          	li	a4,0
    80002ea8:	02e56063          	bltu	a0,a4,80002ec8 <_Z10buddy_initPvm+0x94>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80002eac:	00270793          	addi	a5,a4,2
    80002eb0:	00479793          	slli	a5,a5,0x4
    80002eb4:	00f907b3          	add	a5,s2,a5
    80002eb8:	0007b423          	sd	zero,8(a5)
    80002ebc:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002ec0:	00170713          	addi	a4,a4,1
    80002ec4:	fe5ff06f          	j	80002ea8 <_Z10buddy_initPvm+0x74>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002ec8:	00000493          	li	s1,0
    80002ecc:	0334f463          	bgeu	s1,s3,80002ef4 <_Z10buddy_initPvm+0xc0>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    80002ed0:	00893583          	ld	a1,8(s2)
    80002ed4:	00c49793          	slli	a5,s1,0xc
    80002ed8:	00000613          	li	a2,0
    80002edc:	00f585b3          	add	a1,a1,a5
    80002ee0:	00090513          	mv	a0,s2
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	e18080e7          	jalr	-488(ra) # 80002cfc <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002eec:	00148493          	addi	s1,s1,1
    80002ef0:	fddff06f          	j	80002ecc <_Z10buddy_initPvm+0x98>
}
    80002ef4:	00090513          	mv	a0,s2
    80002ef8:	02813083          	ld	ra,40(sp)
    80002efc:	02013403          	ld	s0,32(sp)
    80002f00:	01813483          	ld	s1,24(sp)
    80002f04:	01013903          	ld	s2,16(sp)
    80002f08:	00813983          	ld	s3,8(sp)
    80002f0c:	03010113          	addi	sp,sp,48
    80002f10:	00008067          	ret

0000000080002f14 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80002f14:	fe010113          	addi	sp,sp,-32
    80002f18:	00113c23          	sd	ra,24(sp)
    80002f1c:	00813823          	sd	s0,16(sp)
    80002f20:	00913423          	sd	s1,8(sp)
    80002f24:	01213023          	sd	s2,0(sp)
    80002f28:	02010413          	addi	s0,sp,32
    80002f2c:	00050493          	mv	s1,a0
    80002f30:	00058913          	mv	s2,a1
    size_t level = getDeg2Ceil(numOfBlocks);
    80002f34:	00060513          	mv	a0,a2
    80002f38:	00000097          	auipc	ra,0x0
    80002f3c:	b90080e7          	jalr	-1136(ra) # 80002ac8 <_Z11getDeg2Ceilm>
    80002f40:	00050613          	mv	a2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    80002f44:	00090593          	mv	a1,s2
    80002f48:	00048513          	mv	a0,s1
    80002f4c:	00000097          	auipc	ra,0x0
    80002f50:	db0080e7          	jalr	-592(ra) # 80002cfc <_Z9addBlocksP14buddyAllocatorPvm>
}
    80002f54:	01813083          	ld	ra,24(sp)
    80002f58:	01013403          	ld	s0,16(sp)
    80002f5c:	00813483          	ld	s1,8(sp)
    80002f60:	00013903          	ld	s2,0(sp)
    80002f64:	02010113          	addi	sp,sp,32
    80002f68:	00008067          	ret

0000000080002f6c <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    80002f6c:	ff010113          	addi	sp,sp,-16
    80002f70:	00813423          	sd	s0,8(sp)
    80002f74:	01010413          	addi	s0,sp,16
    //KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    //KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    //KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    //TODO take care of numOfFreeBlocks
    //KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    for(int i = buddy->maxLevel;i>=0;i--)
    80002f78:	01852703          	lw	a4,24(a0)
    80002f7c:	0080006f          	j	80002f84 <_Z14printBuddyInfoP14buddyAllocator+0x18>
    80002f80:	fff7071b          	addiw	a4,a4,-1
    80002f84:	02074063          	bltz	a4,80002fa4 <_Z14printBuddyInfoP14buddyAllocator+0x38>
    {
        //KConsole::trapPrintStringInt("Level ",i);
        //KConsole::trapPrintString("Free blocks on this level\n");
        buddyBlock* curr = buddy->bucket[i].first;
    80002f88:	00270793          	addi	a5,a4,2
    80002f8c:	00479793          	slli	a5,a5,0x4
    80002f90:	00f507b3          	add	a5,a0,a5
    80002f94:	0007b783          	ld	a5,0(a5)
        while(curr != 0)
    80002f98:	fe0784e3          	beqz	a5,80002f80 <_Z14printBuddyInfoP14buddyAllocator+0x14>
        {
            //KConsole::trapPrintInt((size_t)curr, 16);
            //KConsole::trapPrintString("\n");
            curr = curr->next;
    80002f9c:	0007b783          	ld	a5,0(a5)
        while(curr != 0)
    80002fa0:	ff9ff06f          	j	80002f98 <_Z14printBuddyInfoP14buddyAllocator+0x2c>
        }
    }
    //KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    80002fa4:	00813403          	ld	s0,8(sp)
    80002fa8:	01010113          	addi	sp,sp,16
    80002fac:	00008067          	ret

0000000080002fb0 <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    80002fb0:	fe010113          	addi	sp,sp,-32
    80002fb4:	00113c23          	sd	ra,24(sp)
    80002fb8:	00813823          	sd	s0,16(sp)
    80002fbc:	00913423          	sd	s1,8(sp)
    80002fc0:	01213023          	sd	s2,0(sp)
    80002fc4:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80002fc8:	01800513          	li	a0,24
    80002fcc:	00002097          	auipc	ra,0x2
    80002fd0:	f00080e7          	jalr	-256(ra) # 80004ecc <_ZN10KSemaphorenwEm>
    80002fd4:	00050493          	mv	s1,a0
    80002fd8:	00000593          	li	a1,0
    80002fdc:	00002097          	auipc	ra,0x2
    80002fe0:	c8c080e7          	jalr	-884(ra) # 80004c68 <_ZN10KSemaphoreC1Ei>
    80002fe4:	00009797          	auipc	a5,0x9
    80002fe8:	9497be23          	sd	s1,-1700(a5) # 8000b940 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80002fec:	01800513          	li	a0,24
    80002ff0:	00002097          	auipc	ra,0x2
    80002ff4:	edc080e7          	jalr	-292(ra) # 80004ecc <_ZN10KSemaphorenwEm>
    80002ff8:	00050493          	mv	s1,a0
    80002ffc:	00000593          	li	a1,0
    80003000:	00002097          	auipc	ra,0x2
    80003004:	c68080e7          	jalr	-920(ra) # 80004c68 <_ZN10KSemaphoreC1Ei>
    80003008:	00009797          	auipc	a5,0x9
    8000300c:	9497b023          	sd	s1,-1728(a5) # 8000b948 <_ZN8KConsole19hasCharactersOutputE>
}
    80003010:	01813083          	ld	ra,24(sp)
    80003014:	01013403          	ld	s0,16(sp)
    80003018:	00813483          	ld	s1,8(sp)
    8000301c:	00013903          	ld	s2,0(sp)
    80003020:	02010113          	addi	sp,sp,32
    80003024:	00008067          	ret
    80003028:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    8000302c:	00048513          	mv	a0,s1
    80003030:	00002097          	auipc	ra,0x2
    80003034:	f48080e7          	jalr	-184(ra) # 80004f78 <_ZN10KSemaphoredlEPv>
    80003038:	00090513          	mv	a0,s2
    8000303c:	0000e097          	auipc	ra,0xe
    80003040:	a6c080e7          	jalr	-1428(ra) # 80010aa8 <_Unwind_Resume>
    80003044:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80003048:	00048513          	mv	a0,s1
    8000304c:	00002097          	auipc	ra,0x2
    80003050:	f2c080e7          	jalr	-212(ra) # 80004f78 <_ZN10KSemaphoredlEPv>
    80003054:	00090513          	mv	a0,s2
    80003058:	0000e097          	auipc	ra,0xe
    8000305c:	a50080e7          	jalr	-1456(ra) # 80010aa8 <_Unwind_Resume>

0000000080003060 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80003060:	00009697          	auipc	a3,0x9
    80003064:	8e068693          	addi	a3,a3,-1824 # 8000b940 <_ZN8KConsole18hasCharactersInputE>
    80003068:	0106b603          	ld	a2,16(a3)
    8000306c:	00160793          	addi	a5,a2,1
    80003070:	00002737          	lui	a4,0x2
    80003074:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80003078:	00e7f7b3          	and	a5,a5,a4
    8000307c:	0186b703          	ld	a4,24(a3)
    80003080:	04e78263          	beq	a5,a4,800030c4 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80003084:	ff010113          	addi	sp,sp,-16
    80003088:	00113423          	sd	ra,8(sp)
    8000308c:	00813023          	sd	s0,0(sp)
    80003090:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80003094:	0000b717          	auipc	a4,0xb
    80003098:	8ec70713          	addi	a4,a4,-1812 # 8000d980 <_ZN8KConsole11inputBufferE>
    8000309c:	00c70633          	add	a2,a4,a2
    800030a0:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    800030a4:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    800030a8:	0006b503          	ld	a0,0(a3)
    800030ac:	00002097          	auipc	ra,0x2
    800030b0:	dd8080e7          	jalr	-552(ra) # 80004e84 <_ZN10KSemaphore6signalEv>
}
    800030b4:	00813083          	ld	ra,8(sp)
    800030b8:	00013403          	ld	s0,0(sp)
    800030bc:	01010113          	addi	sp,sp,16
    800030c0:	00008067          	ret
    800030c4:	00008067          	ret

00000000800030c8 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    800030c8:	00008797          	auipc	a5,0x8
    800030cc:	7707b783          	ld	a5,1904(a5) # 8000b838 <_GLOBAL_OFFSET_TABLE_+0x10>
    800030d0:	0007b783          	ld	a5,0(a5)
    800030d4:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    800030d8:	0017f793          	andi	a5,a5,1
    800030dc:	02078063          	beqz	a5,800030fc <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    800030e0:	00008797          	auipc	a5,0x8
    800030e4:	7807b783          	ld	a5,1920(a5) # 8000b860 <_GLOBAL_OFFSET_TABLE_+0x38>
    800030e8:	0007b783          	ld	a5,0(a5)
    800030ec:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    800030f0:	00009797          	auipc	a5,0x9
    800030f4:	8707b783          	ld	a5,-1936(a5) # 8000b960 <_ZN8KConsole11pendingGetcE>
    800030f8:	00079463          	bnez	a5,80003100 <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    800030fc:	00008067          	ret
{
    80003100:	ff010113          	addi	sp,sp,-16
    80003104:	00113423          	sd	ra,8(sp)
    80003108:	00813023          	sd	s0,0(sp)
    8000310c:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    80003110:	fff78793          	addi	a5,a5,-1
    80003114:	00009717          	auipc	a4,0x9
    80003118:	84f73623          	sd	a5,-1972(a4) # 8000b960 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    8000311c:	00000097          	auipc	ra,0x0
    80003120:	f44080e7          	jalr	-188(ra) # 80003060 <_ZN8KConsole17putCharacterInputEc>
}
    80003124:	00813083          	ld	ra,8(sp)
    80003128:	00013403          	ld	s0,0(sp)
    8000312c:	01010113          	addi	sp,sp,16
    80003130:	00008067          	ret

0000000080003134 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80003134:	fe010113          	addi	sp,sp,-32
    80003138:	00113c23          	sd	ra,24(sp)
    8000313c:	00813823          	sd	s0,16(sp)
    80003140:	00913423          	sd	s1,8(sp)
    80003144:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80003148:	00008497          	auipc	s1,0x8
    8000314c:	7f848493          	addi	s1,s1,2040 # 8000b940 <_ZN8KConsole18hasCharactersInputE>
    80003150:	0004b503          	ld	a0,0(s1)
    80003154:	00002097          	auipc	ra,0x2
    80003158:	bb8080e7          	jalr	-1096(ra) # 80004d0c <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    8000315c:	0184b783          	ld	a5,24(s1)
    80003160:	0104b703          	ld	a4,16(s1)
    80003164:	04e78063          	beq	a5,a4,800031a4 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    80003168:	0000b717          	auipc	a4,0xb
    8000316c:	81870713          	addi	a4,a4,-2024 # 8000d980 <_ZN8KConsole11inputBufferE>
    80003170:	00f70733          	add	a4,a4,a5
    80003174:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    80003178:	00178793          	addi	a5,a5,1
    8000317c:	00002737          	lui	a4,0x2
    80003180:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80003184:	00e7f7b3          	and	a5,a5,a4
    80003188:	00008717          	auipc	a4,0x8
    8000318c:	7cf73823          	sd	a5,2000(a4) # 8000b958 <_ZN8KConsole9inputHeadE>
    return c;
}
    80003190:	01813083          	ld	ra,24(sp)
    80003194:	01013403          	ld	s0,16(sp)
    80003198:	00813483          	ld	s1,8(sp)
    8000319c:	02010113          	addi	sp,sp,32
    800031a0:	00008067          	ret
        return -1;
    800031a4:	0ff00513          	li	a0,255
    800031a8:	fe9ff06f          	j	80003190 <_ZN8KConsole17getCharacterInputEv+0x5c>

00000000800031ac <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    800031ac:	00008697          	auipc	a3,0x8
    800031b0:	79468693          	addi	a3,a3,1940 # 8000b940 <_ZN8KConsole18hasCharactersInputE>
    800031b4:	0286b603          	ld	a2,40(a3)
    800031b8:	00160793          	addi	a5,a2,1
    800031bc:	00002737          	lui	a4,0x2
    800031c0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800031c4:	00e7f7b3          	and	a5,a5,a4
    800031c8:	0306b703          	ld	a4,48(a3)
    800031cc:	04e78a63          	beq	a5,a4,80003220 <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    800031d0:	ff010113          	addi	sp,sp,-16
    800031d4:	00113423          	sd	ra,8(sp)
    800031d8:	00813023          	sd	s0,0(sp)
    800031dc:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    800031e0:	00068713          	mv	a4,a3
    800031e4:	0386b683          	ld	a3,56(a3)
    800031e8:	00168693          	addi	a3,a3,1
    800031ec:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    800031f0:	00008697          	auipc	a3,0x8
    800031f4:	79068693          	addi	a3,a3,1936 # 8000b980 <_ZN8KConsole12outputBufferE>
    800031f8:	00c68633          	add	a2,a3,a2
    800031fc:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    80003200:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    80003204:	00873503          	ld	a0,8(a4)
    80003208:	00002097          	auipc	ra,0x2
    8000320c:	c7c080e7          	jalr	-900(ra) # 80004e84 <_ZN10KSemaphore6signalEv>
}
    80003210:	00813083          	ld	ra,8(sp)
    80003214:	00013403          	ld	s0,0(sp)
    80003218:	01010113          	addi	sp,sp,16
    8000321c:	00008067          	ret
    80003220:	00008067          	ret

0000000080003224 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    80003224:	fe010113          	addi	sp,sp,-32
    80003228:	00113c23          	sd	ra,24(sp)
    8000322c:	00813823          	sd	s0,16(sp)
    80003230:	00913423          	sd	s1,8(sp)
    80003234:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    80003238:	00008497          	auipc	s1,0x8
    8000323c:	70848493          	addi	s1,s1,1800 # 8000b940 <_ZN8KConsole18hasCharactersInputE>
    80003240:	0084b503          	ld	a0,8(s1)
    80003244:	00002097          	auipc	ra,0x2
    80003248:	ac8080e7          	jalr	-1336(ra) # 80004d0c <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    8000324c:	0304b783          	ld	a5,48(s1)
    80003250:	0284b703          	ld	a4,40(s1)
    80003254:	04e78063          	beq	a5,a4,80003294 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    80003258:	00008717          	auipc	a4,0x8
    8000325c:	72870713          	addi	a4,a4,1832 # 8000b980 <_ZN8KConsole12outputBufferE>
    80003260:	00f70733          	add	a4,a4,a5
    80003264:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    80003268:	00178793          	addi	a5,a5,1
    8000326c:	00002737          	lui	a4,0x2
    80003270:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80003274:	00e7f7b3          	and	a5,a5,a4
    80003278:	00008717          	auipc	a4,0x8
    8000327c:	6ef73c23          	sd	a5,1784(a4) # 8000b970 <_ZN8KConsole10outputHeadE>
    return c;
}
    80003280:	01813083          	ld	ra,24(sp)
    80003284:	01013403          	ld	s0,16(sp)
    80003288:	00813483          	ld	s1,8(sp)
    8000328c:	02010113          	addi	sp,sp,32
    80003290:	00008067          	ret
        return -1;
    80003294:	0ff00513          	li	a0,255
    80003298:	fe9ff06f          	j	80003280 <_ZN8KConsole18getCharacterOutputEv+0x5c>

000000008000329c <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    8000329c:	ff010113          	addi	sp,sp,-16
    800032a0:	00113423          	sd	ra,8(sp)
    800032a4:	00813023          	sd	s0,0(sp)
    800032a8:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    800032ac:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    800032b0:	0ff57513          	andi	a0,a0,255
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	ef8080e7          	jalr	-264(ra) # 800031ac <_ZN8KConsole18putCharacterOutputEc>
}
    800032bc:	00813083          	ld	ra,8(sp)
    800032c0:	00013403          	ld	s0,0(sp)
    800032c4:	01010113          	addi	sp,sp,16
    800032c8:	00008067          	ret

00000000800032cc <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    800032cc:	fe010113          	addi	sp,sp,-32
    800032d0:	00113c23          	sd	ra,24(sp)
    800032d4:	00813823          	sd	s0,16(sp)
    800032d8:	00913423          	sd	s1,8(sp)
    800032dc:	02010413          	addi	s0,sp,32
    pendingGetc++;
    800032e0:	00008717          	auipc	a4,0x8
    800032e4:	66070713          	addi	a4,a4,1632 # 8000b940 <_ZN8KConsole18hasCharactersInputE>
    800032e8:	02073783          	ld	a5,32(a4)
    800032ec:	00178793          	addi	a5,a5,1
    800032f0:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	e40080e7          	jalr	-448(ra) # 80003134 <_ZN8KConsole17getCharacterInputEv>
    800032fc:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    80003300:	01b00793          	li	a5,27
    80003304:	02f51663          	bne	a0,a5,80003330 <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80003308:	00d00793          	li	a5,13
    8000330c:	02f48863          	beq	s1,a5,8000333c <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003310:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003314:	00001097          	auipc	ra,0x1
    80003318:	000080e7          	jalr	ra # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000331c:	01813083          	ld	ra,24(sp)
    80003320:	01013403          	ld	s0,16(sp)
    80003324:	00813483          	ld	s1,8(sp)
    80003328:	02010113          	addi	sp,sp,32
    8000332c:	00008067          	ret
        putCharacterOutput(ch);
    80003330:	00000097          	auipc	ra,0x0
    80003334:	e7c080e7          	jalr	-388(ra) # 800031ac <_ZN8KConsole18putCharacterOutputEc>
    80003338:	fd1ff06f          	j	80003308 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    8000333c:	00d00513          	li	a0,13
    80003340:	00000097          	auipc	ra,0x0
    80003344:	e6c080e7          	jalr	-404(ra) # 800031ac <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003348:	00a00513          	li	a0,10
    8000334c:	00000097          	auipc	ra,0x0
    80003350:	e60080e7          	jalr	-416(ra) # 800031ac <_ZN8KConsole18putCharacterOutputEc>
    80003354:	fbdff06f          	j	80003310 <_ZN8KConsole11getcHandlerEv+0x44>

0000000080003358 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003358:	ff010113          	addi	sp,sp,-16
    8000335c:	00813423          	sd	s0,8(sp)
    80003360:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003364:	00008517          	auipc	a0,0x8
    80003368:	61453503          	ld	a0,1556(a0) # 8000b978 <_ZN8KConsole11pendingPutcE>
    8000336c:	00153513          	seqz	a0,a0
    80003370:	00813403          	ld	s0,8(sp)
    80003374:	01010113          	addi	sp,sp,16
    80003378:	00008067          	ret

000000008000337c <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    8000337c:	fe010113          	addi	sp,sp,-32
    80003380:	00113c23          	sd	ra,24(sp)
    80003384:	00813823          	sd	s0,16(sp)
    80003388:	02010413          	addi	s0,sp,32
    8000338c:	0180006f          	j	800033a4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    80003390:	fffff097          	auipc	ra,0xfffff
    80003394:	e58080e7          	jalr	-424(ra) # 800021e8 <_Z11thread_exitv>
    80003398:	0340006f          	j	800033cc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    8000339c:	fffff097          	auipc	ra,0xfffff
    800033a0:	e2c080e7          	jalr	-468(ra) # 800021c8 <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    800033a4:	00008797          	auipc	a5,0x8
    800033a8:	4f47b783          	ld	a5,1268(a5) # 8000b898 <_GLOBAL_OFFSET_TABLE_+0x70>
    800033ac:	0007c783          	lbu	a5,0(a5)
    800033b0:	00078e63          	beqz	a5,800033cc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800033b4:	00000097          	auipc	ra,0x0
    800033b8:	fa4080e7          	jalr	-92(ra) # 80003358 <_ZN8KConsole17outputBufferEmptyEv>
    800033bc:	00050863          	beqz	a0,800033cc <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    800033c0:	00008797          	auipc	a5,0x8
    800033c4:	5a07b783          	ld	a5,1440(a5) # 8000b960 <_ZN8KConsole11pendingGetcE>
    800033c8:	fc0784e3          	beqz	a5,80003390 <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    800033cc:	00008797          	auipc	a5,0x8
    800033d0:	46c7b783          	ld	a5,1132(a5) # 8000b838 <_GLOBAL_OFFSET_TABLE_+0x10>
    800033d4:	0007b783          	ld	a5,0(a5)
    800033d8:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    800033dc:	0207f793          	andi	a5,a5,32
    800033e0:	fa078ee3          	beqz	a5,8000339c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    800033e4:	00008797          	auipc	a5,0x8
    800033e8:	5947b783          	ld	a5,1428(a5) # 8000b978 <_ZN8KConsole11pendingPutcE>
    800033ec:	fa0788e3          	beqz	a5,8000339c <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    800033f0:	fffff097          	auipc	ra,0xfffff
    800033f4:	000080e7          	jalr	ra # 800023f0 <_Z20sysCallGetCharOutputv>
    800033f8:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    800033fc:	00008717          	auipc	a4,0x8
    80003400:	54470713          	addi	a4,a4,1348 # 8000b940 <_ZN8KConsole18hasCharactersInputE>
    80003404:	03873783          	ld	a5,56(a4)
    80003408:	fff78793          	addi	a5,a5,-1
    8000340c:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    80003410:	00008797          	auipc	a5,0x8
    80003414:	4207b783          	ld	a5,1056(a5) # 8000b830 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003418:	0007b783          	ld	a5,0(a5)
    8000341c:	fef44703          	lbu	a4,-17(s0)
    80003420:	00e78023          	sb	a4,0(a5)
    80003424:	f81ff06f          	j	800033a4 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

0000000080003428 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    80003428:	ff010113          	addi	sp,sp,-16
    8000342c:	00113423          	sd	ra,8(sp)
    80003430:	00813023          	sd	s0,0(sp)
    80003434:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003438:	00000097          	auipc	ra,0x0
    8000343c:	dec080e7          	jalr	-532(ra) # 80003224 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    80003440:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003444:	00001097          	auipc	ra,0x1
    80003448:	ed0080e7          	jalr	-304(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000344c:	00813083          	ld	ra,8(sp)
    80003450:	00013403          	ld	s0,0(sp)
    80003454:	01010113          	addi	sp,sp,16
    80003458:	00008067          	ret

000000008000345c <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    8000345c:	fe010113          	addi	sp,sp,-32
    80003460:	00113c23          	sd	ra,24(sp)
    80003464:	00813823          	sd	s0,16(sp)
    80003468:	00913423          	sd	s1,8(sp)
    8000346c:	02010413          	addi	s0,sp,32
    80003470:	00050493          	mv	s1,a0
    while (*string != '\0')
    80003474:	0004c503          	lbu	a0,0(s1)
    80003478:	00050a63          	beqz	a0,8000348c <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	d30080e7          	jalr	-720(ra) # 800031ac <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80003484:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003488:	fedff06f          	j	80003474 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    8000348c:	01813083          	ld	ra,24(sp)
    80003490:	01013403          	ld	s0,16(sp)
    80003494:	00813483          	ld	s1,8(sp)
    80003498:	02010113          	addi	sp,sp,32
    8000349c:	00008067          	ret

00000000800034a0 <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    800034a0:	fb010113          	addi	sp,sp,-80
    800034a4:	04113423          	sd	ra,72(sp)
    800034a8:	04813023          	sd	s0,64(sp)
    800034ac:	02913c23          	sd	s1,56(sp)
    800034b0:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    800034b4:	00006797          	auipc	a5,0x6
    800034b8:	d8478793          	addi	a5,a5,-636 # 80009238 <CONSOLE_STATUS+0x228>
    800034bc:	0007b703          	ld	a4,0(a5)
    800034c0:	fce43423          	sd	a4,-56(s0)
    800034c4:	0087b703          	ld	a4,8(a5)
    800034c8:	fce43823          	sd	a4,-48(s0)
    800034cc:	0107c783          	lbu	a5,16(a5)
    800034d0:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    800034d4:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800034d8:	02b57733          	remu	a4,a0,a1
    800034dc:	fe040693          	addi	a3,s0,-32
    800034e0:	00e68733          	add	a4,a3,a4
    800034e4:	fe874703          	lbu	a4,-24(a4)
    800034e8:	009687b3          	add	a5,a3,s1
    800034ec:	0014849b          	addiw	s1,s1,1
    800034f0:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    800034f4:	00050793          	mv	a5,a0
    800034f8:	02b55533          	divu	a0,a0,a1
    800034fc:	fcb7fee3          	bgeu	a5,a1,800034d8 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    80003500:	fff4849b          	addiw	s1,s1,-1
    80003504:	0004ce63          	bltz	s1,80003520 <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    80003508:	fe040793          	addi	a5,s0,-32
    8000350c:	009787b3          	add	a5,a5,s1
    80003510:	fd87c503          	lbu	a0,-40(a5)
    80003514:	00000097          	auipc	ra,0x0
    80003518:	c98080e7          	jalr	-872(ra) # 800031ac <_ZN8KConsole18putCharacterOutputEc>
    8000351c:	fe5ff06f          	j	80003500 <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    80003520:	04813083          	ld	ra,72(sp)
    80003524:	04013403          	ld	s0,64(sp)
    80003528:	03813483          	ld	s1,56(sp)
    8000352c:	05010113          	addi	sp,sp,80
    80003530:	00008067          	ret

0000000080003534 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    80003534:	fe010113          	addi	sp,sp,-32
    80003538:	00113c23          	sd	ra,24(sp)
    8000353c:	00813823          	sd	s0,16(sp)
    80003540:	00913423          	sd	s1,8(sp)
    80003544:	01213023          	sd	s2,0(sp)
    80003548:	02010413          	addi	s0,sp,32
    8000354c:	00058493          	mv	s1,a1
    80003550:	00060913          	mv	s2,a2
    trapPrintString(string);
    80003554:	00000097          	auipc	ra,0x0
    80003558:	f08080e7          	jalr	-248(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    8000355c:	00000613          	li	a2,0
    80003560:	00090593          	mv	a1,s2
    80003564:	00048513          	mv	a0,s1
    80003568:	00000097          	auipc	ra,0x0
    8000356c:	f38080e7          	jalr	-200(ra) # 800034a0 <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    80003570:	00006517          	auipc	a0,0x6
    80003574:	06850513          	addi	a0,a0,104 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	ee4080e7          	jalr	-284(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
}
    80003580:	01813083          	ld	ra,24(sp)
    80003584:	01013403          	ld	s0,16(sp)
    80003588:	00813483          	ld	s1,8(sp)
    8000358c:	00013903          	ld	s2,0(sp)
    80003590:	02010113          	addi	sp,sp,32
    80003594:	00008067          	ret

0000000080003598 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003598:	ff010113          	addi	sp,sp,-16
    8000359c:	00813423          	sd	s0,8(sp)
    800035a0:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800035a4:	00008797          	auipc	a5,0x8
    800035a8:	2fc7b783          	ld	a5,764(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800035ac:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800035b0:	00500793          	li	a5,5
    800035b4:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800035b8:	0000c797          	auipc	a5,0xc
    800035bc:	3c87b783          	ld	a5,968(a5) # 8000f980 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800035c0:	00000593          	li	a1,0
    while(curr != 0)
    800035c4:	02078063          	beqz	a5,800035e4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800035c8:	02063683          	ld	a3,32(a2)
    800035cc:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800035d0:	00e6e863          	bltu	a3,a4,800035e0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800035d4:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800035d8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800035dc:	fe9ff06f          	j	800035c4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800035e0:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800035e4:	00058a63          	beqz	a1,800035f8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    800035e8:	00c5b423          	sd	a2,8(a1)
}
    800035ec:	00813403          	ld	s0,8(sp)
    800035f0:	01010113          	addi	sp,sp,16
    800035f4:	00008067          	ret
        sleepingPCBHead = PCB::running;
    800035f8:	0000c797          	auipc	a5,0xc
    800035fc:	38c7b423          	sd	a2,904(a5) # 8000f980 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003600:	fedff06f          	j	800035ec <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003604 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80003604:	0000c517          	auipc	a0,0xc
    80003608:	37c53503          	ld	a0,892(a0) # 8000f980 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    8000360c:	06050e63          	beqz	a0,80003688 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003610:	06050c63          	beqz	a0,80003688 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003614:	02053783          	ld	a5,32(a0)
    80003618:	00008717          	auipc	a4,0x8
    8000361c:	26073703          	ld	a4,608(a4) # 8000b878 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003620:	00073703          	ld	a4,0(a4)
    80003624:	06f76263          	bltu	a4,a5,80003688 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003628:	fe010113          	addi	sp,sp,-32
    8000362c:	00113c23          	sd	ra,24(sp)
    80003630:	00813823          	sd	s0,16(sp)
    80003634:	00913423          	sd	s1,8(sp)
    80003638:	02010413          	addi	s0,sp,32
    8000363c:	0180006f          	j	80003654 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003640:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003644:	00008717          	auipc	a4,0x8
    80003648:	23473703          	ld	a4,564(a4) # 8000b878 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000364c:	00073703          	ld	a4,0(a4)
    80003650:	02f76263          	bltu	a4,a5,80003674 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003654:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003658:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	0b8080e7          	jalr	184(ra) # 80003714 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003664:	0000c797          	auipc	a5,0xc
    80003668:	3097be23          	sd	s1,796(a5) # 8000f980 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    8000366c:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003670:	fc0498e3          	bnez	s1,80003640 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003674:	01813083          	ld	ra,24(sp)
    80003678:	01013403          	ld	s0,16(sp)
    8000367c:	00813483          	ld	s1,8(sp)
    80003680:	02010113          	addi	sp,sp,32
    80003684:	00008067          	ret
    80003688:	00008067          	ret

000000008000368c <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    8000368c:	ff010113          	addi	sp,sp,-16
    80003690:	00113423          	sd	ra,8(sp)
    80003694:	00813023          	sd	s0,0(sp)
    80003698:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    8000369c:	00001097          	auipc	ra,0x1
    800036a0:	37c080e7          	jalr	892(ra) # 80004a18 <_ZN15MemoryAllocator7kmallocEm>
}
    800036a4:	00813083          	ld	ra,8(sp)
    800036a8:	00013403          	ld	s0,0(sp)
    800036ac:	01010113          	addi	sp,sp,16
    800036b0:	00008067          	ret

00000000800036b4 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800036b4:	ff010113          	addi	sp,sp,-16
    800036b8:	00113423          	sd	ra,8(sp)
    800036bc:	00813023          	sd	s0,0(sp)
    800036c0:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800036c4:	00001097          	auipc	ra,0x1
    800036c8:	3b8080e7          	jalr	952(ra) # 80004a7c <_ZN15MemoryAllocator5kfreeEPv>
}
    800036cc:	00813083          	ld	ra,8(sp)
    800036d0:	00013403          	ld	s0,0(sp)
    800036d4:	01010113          	addi	sp,sp,16
    800036d8:	00008067          	ret

00000000800036dc <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    800036dc:	ff010113          	addi	sp,sp,-16
    800036e0:	00813423          	sd	s0,8(sp)
    800036e4:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    800036e8:	0000c797          	auipc	a5,0xc
    800036ec:	2a07b783          	ld	a5,672(a5) # 8000f988 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    800036f0:	00000513          	li	a0,0
    while(curr != 0)
    800036f4:	00078863          	beqz	a5,80003704 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    800036f8:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    800036fc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003700:	ff5ff06f          	j	800036f4 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003704:	0005051b          	sext.w	a0,a0
    80003708:	00813403          	ld	s0,8(sp)
    8000370c:	01010113          	addi	sp,sp,16
    80003710:	00008067          	ret

0000000080003714 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003714:	ff010113          	addi	sp,sp,-16
    80003718:	00813423          	sd	s0,8(sp)
    8000371c:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003720:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003724:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003728:	0000c797          	auipc	a5,0xc
    8000372c:	2607b783          	ld	a5,608(a5) # 8000f988 <_ZN9Scheduler16schedulerPCBHeadE>
    80003730:	02078263          	beqz	a5,80003754 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003734:	0000c797          	auipc	a5,0xc
    80003738:	25478793          	addi	a5,a5,596 # 8000f988 <_ZN9Scheduler16schedulerPCBHeadE>
    8000373c:	0087b703          	ld	a4,8(a5)
    80003740:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003744:	00a7b423          	sd	a0,8(a5)
    }
}
    80003748:	00813403          	ld	s0,8(sp)
    8000374c:	01010113          	addi	sp,sp,16
    80003750:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003754:	0000c797          	auipc	a5,0xc
    80003758:	23478793          	addi	a5,a5,564 # 8000f988 <_ZN9Scheduler16schedulerPCBHeadE>
    8000375c:	00a7b423          	sd	a0,8(a5)
    80003760:	00a7b023          	sd	a0,0(a5)
    80003764:	fe5ff06f          	j	80003748 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003768 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003768:	ff010113          	addi	sp,sp,-16
    8000376c:	00813423          	sd	s0,8(sp)
    80003770:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003774:	0000c517          	auipc	a0,0xc
    80003778:	21453503          	ld	a0,532(a0) # 8000f988 <_ZN9Scheduler16schedulerPCBHeadE>
    8000377c:	00050c63          	beqz	a0,80003794 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003780:	00853783          	ld	a5,8(a0)
    80003784:	00078e63          	beqz	a5,800037a0 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003788:	0000c717          	auipc	a4,0xc
    8000378c:	20f73023          	sd	a5,512(a4) # 8000f988 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003790:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003794:	00813403          	ld	s0,8(sp)
    80003798:	01010113          	addi	sp,sp,16
    8000379c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800037a0:	0000c797          	auipc	a5,0xc
    800037a4:	1e878793          	addi	a5,a5,488 # 8000f988 <_ZN9Scheduler16schedulerPCBHeadE>
    800037a8:	0007b423          	sd	zero,8(a5)
    800037ac:	0007b023          	sd	zero,0(a5)
    800037b0:	fe1ff06f          	j	80003790 <_ZN9Scheduler3getEv+0x28>

00000000800037b4 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    800037b4:	fe010113          	addi	sp,sp,-32
    800037b8:	00113c23          	sd	ra,24(sp)
    800037bc:	00813823          	sd	s0,16(sp)
    800037c0:	00913423          	sd	s1,8(sp)
    800037c4:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    800037c8:	0000c497          	auipc	s1,0xc
    800037cc:	1c04b483          	ld	s1,448(s1) # 8000f988 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    800037d0:	02048863          	beqz	s1,80003800 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    800037d4:	00000613          	li	a2,0
    800037d8:	01000593          	li	a1,16
    800037dc:	00048513          	mv	a0,s1
    800037e0:	00000097          	auipc	ra,0x0
    800037e4:	cc0080e7          	jalr	-832(ra) # 800034a0 <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    800037e8:	00006517          	auipc	a0,0x6
    800037ec:	df050513          	addi	a0,a0,-528 # 800095d8 <CONSOLE_STATUS+0x5c8>
    800037f0:	00000097          	auipc	ra,0x0
    800037f4:	c6c080e7          	jalr	-916(ra) # 8000345c <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    800037f8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800037fc:	fd5ff06f          	j	800037d0 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003800:	01813083          	ld	ra,24(sp)
    80003804:	01013403          	ld	s0,16(sp)
    80003808:	00813483          	ld	s1,8(sp)
    8000380c:	02010113          	addi	sp,sp,32
    80003810:	00008067          	ret

0000000080003814 <main>:
#include "../h/Riscv.hpp"

void main()
{
    80003814:	ff010113          	addi	sp,sp,-16
    80003818:	00113423          	sd	ra,8(sp)
    8000381c:	00813023          	sd	s0,0(sp)
    80003820:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003824:	00001097          	auipc	ra,0x1
    80003828:	a30080e7          	jalr	-1488(ra) # 80004254 <_ZN5Riscv10kernelMainEv>
    8000382c:	00813083          	ld	ra,8(sp)
    80003830:	00013403          	ld	s0,0(sp)
    80003834:	01010113          	addi	sp,sp,16
    80003838:	00008067          	ret

000000008000383c <_Z14buddyInitTest1v>:
#include "../h/buddyTests.hpp"

void buddyInitTest1()
{
    8000383c:	ff010113          	addi	sp,sp,-16
    80003840:	00113423          	sd	ra,8(sp)
    80003844:	00813023          	sd	s0,0(sp)
    80003848:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    8000384c:	01200593          	li	a1,18
    80003850:	00008797          	auipc	a5,0x8
    80003854:	ff07b783          	ld	a5,-16(a5) # 8000b840 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003858:	0007b503          	ld	a0,0(a5)
    8000385c:	fffff097          	auipc	ra,0xfffff
    80003860:	5d8080e7          	jalr	1496(ra) # 80002e34 <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    80003864:	fffff097          	auipc	ra,0xfffff
    80003868:	708080e7          	jalr	1800(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>
}
    8000386c:	00813083          	ld	ra,8(sp)
    80003870:	00013403          	ld	s0,0(sp)
    80003874:	01010113          	addi	sp,sp,16
    80003878:	00008067          	ret

000000008000387c <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    8000387c:	fe010113          	addi	sp,sp,-32
    80003880:	00113c23          	sd	ra,24(sp)
    80003884:	00813823          	sd	s0,16(sp)
    80003888:	00913423          	sd	s1,8(sp)
    8000388c:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003890:	00a00593          	li	a1,10
    80003894:	00008797          	auipc	a5,0x8
    80003898:	fac7b783          	ld	a5,-84(a5) # 8000b840 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000389c:	0007b503          	ld	a0,0(a5)
    800038a0:	fffff097          	auipc	ra,0xfffff
    800038a4:	594080e7          	jalr	1428(ra) # 80002e34 <_Z10buddy_initPvm>
    800038a8:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    800038ac:	fffff097          	auipc	ra,0xfffff
    800038b0:	6c0080e7          	jalr	1728(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    800038b4:	00100593          	li	a1,1
    800038b8:	00048513          	mv	a0,s1
    800038bc:	fffff097          	auipc	ra,0xfffff
    800038c0:	388080e7          	jalr	904(ra) # 80002c44 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    800038c4:	00048513          	mv	a0,s1
    800038c8:	fffff097          	auipc	ra,0xfffff
    800038cc:	6a4080e7          	jalr	1700(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    800038d0:	00100593          	li	a1,1
    800038d4:	00048513          	mv	a0,s1
    800038d8:	fffff097          	auipc	ra,0xfffff
    800038dc:	36c080e7          	jalr	876(ra) # 80002c44 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    800038e0:	00048513          	mv	a0,s1
    800038e4:	fffff097          	auipc	ra,0xfffff
    800038e8:	688080e7          	jalr	1672(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    800038ec:	00100593          	li	a1,1
    800038f0:	00048513          	mv	a0,s1
    800038f4:	fffff097          	auipc	ra,0xfffff
    800038f8:	350080e7          	jalr	848(ra) # 80002c44 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    800038fc:	00048513          	mv	a0,s1
    80003900:	fffff097          	auipc	ra,0xfffff
    80003904:	66c080e7          	jalr	1644(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    80003908:	00300593          	li	a1,3
    8000390c:	00048513          	mv	a0,s1
    80003910:	fffff097          	auipc	ra,0xfffff
    80003914:	334080e7          	jalr	820(ra) # 80002c44 <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003918:	00048513          	mv	a0,s1
    8000391c:	fffff097          	auipc	ra,0xfffff
    80003920:	650080e7          	jalr	1616(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>
}
    80003924:	01813083          	ld	ra,24(sp)
    80003928:	01013403          	ld	s0,16(sp)
    8000392c:	00813483          	ld	s1,8(sp)
    80003930:	02010113          	addi	sp,sp,32
    80003934:	00008067          	ret

0000000080003938 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003938:	fe010113          	addi	sp,sp,-32
    8000393c:	00113c23          	sd	ra,24(sp)
    80003940:	00813823          	sd	s0,16(sp)
    80003944:	00913423          	sd	s1,8(sp)
    80003948:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    8000394c:	00a00593          	li	a1,10
    80003950:	00008797          	auipc	a5,0x8
    80003954:	ef07b783          	ld	a5,-272(a5) # 8000b840 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003958:	0007b503          	ld	a0,0(a5)
    8000395c:	fffff097          	auipc	ra,0xfffff
    80003960:	4d8080e7          	jalr	1240(ra) # 80002e34 <_Z10buddy_initPvm>
    80003964:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    80003968:	06400593          	li	a1,100
    8000396c:	fffff097          	auipc	ra,0xfffff
    80003970:	2d8080e7          	jalr	728(ra) # 80002c44 <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    80003974:	00050c63          	beqz	a0,8000398c <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    80003978:	01813083          	ld	ra,24(sp)
    8000397c:	01013403          	ld	s0,16(sp)
    80003980:	00813483          	ld	s1,8(sp)
    80003984:	02010113          	addi	sp,sp,32
    80003988:	00008067          	ret
        printBuddyInfo(buddy);
    8000398c:	00048513          	mv	a0,s1
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	5dc080e7          	jalr	1500(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>
}
    80003998:	fe1ff06f          	j	80003978 <_Z20buddyOnlyAllocsTest2v+0x40>

000000008000399c <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    8000399c:	fd010113          	addi	sp,sp,-48
    800039a0:	02113423          	sd	ra,40(sp)
    800039a4:	02813023          	sd	s0,32(sp)
    800039a8:	00913c23          	sd	s1,24(sp)
    800039ac:	01213823          	sd	s2,16(sp)
    800039b0:	01313423          	sd	s3,8(sp)
    800039b4:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    800039b8:	00a00593          	li	a1,10
    800039bc:	00008797          	auipc	a5,0x8
    800039c0:	e847b783          	ld	a5,-380(a5) # 8000b840 <_GLOBAL_OFFSET_TABLE_+0x18>
    800039c4:	0007b503          	ld	a0,0(a5)
    800039c8:	fffff097          	auipc	ra,0xfffff
    800039cc:	46c080e7          	jalr	1132(ra) # 80002e34 <_Z10buddy_initPvm>
    800039d0:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    800039d4:	fffff097          	auipc	ra,0xfffff
    800039d8:	598080e7          	jalr	1432(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    800039dc:	00100593          	li	a1,1
    800039e0:	00048513          	mv	a0,s1
    800039e4:	fffff097          	auipc	ra,0xfffff
    800039e8:	260080e7          	jalr	608(ra) # 80002c44 <_Z11buddy_allocP14buddyAllocatorm>
    800039ec:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    800039f0:	00048513          	mv	a0,s1
    800039f4:	fffff097          	auipc	ra,0xfffff
    800039f8:	578080e7          	jalr	1400(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    800039fc:	00100613          	li	a2,1
    80003a00:	00090593          	mv	a1,s2
    80003a04:	00048513          	mv	a0,s1
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	50c080e7          	jalr	1292(ra) # 80002f14 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003a10:	00048513          	mv	a0,s1
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	558080e7          	jalr	1368(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    80003a1c:	00200593          	li	a1,2
    80003a20:	00048513          	mv	a0,s1
    80003a24:	fffff097          	auipc	ra,0xfffff
    80003a28:	220080e7          	jalr	544(ra) # 80002c44 <_Z11buddy_allocP14buddyAllocatorm>
    80003a2c:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    80003a30:	00300593          	li	a1,3
    80003a34:	00048513          	mv	a0,s1
    80003a38:	fffff097          	auipc	ra,0xfffff
    80003a3c:	20c080e7          	jalr	524(ra) # 80002c44 <_Z11buddy_allocP14buddyAllocatorm>
    80003a40:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    80003a44:	00048513          	mv	a0,s1
    80003a48:	fffff097          	auipc	ra,0xfffff
    80003a4c:	524080e7          	jalr	1316(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    80003a50:	00200613          	li	a2,2
    80003a54:	00090593          	mv	a1,s2
    80003a58:	00048513          	mv	a0,s1
    80003a5c:	fffff097          	auipc	ra,0xfffff
    80003a60:	4b8080e7          	jalr	1208(ra) # 80002f14 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003a64:	00048513          	mv	a0,s1
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	504080e7          	jalr	1284(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    80003a70:	00100593          	li	a1,1
    80003a74:	00048513          	mv	a0,s1
    80003a78:	fffff097          	auipc	ra,0xfffff
    80003a7c:	1cc080e7          	jalr	460(ra) # 80002c44 <_Z11buddy_allocP14buddyAllocatorm>
    80003a80:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003a84:	00048513          	mv	a0,s1
    80003a88:	fffff097          	auipc	ra,0xfffff
    80003a8c:	4e4080e7          	jalr	1252(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003a90:	00300613          	li	a2,3
    80003a94:	00098593          	mv	a1,s3
    80003a98:	00048513          	mv	a0,s1
    80003a9c:	fffff097          	auipc	ra,0xfffff
    80003aa0:	478080e7          	jalr	1144(ra) # 80002f14 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003aa4:	00048513          	mv	a0,s1
    80003aa8:	fffff097          	auipc	ra,0xfffff
    80003aac:	4c4080e7          	jalr	1220(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003ab0:	00100613          	li	a2,1
    80003ab4:	00090593          	mv	a1,s2
    80003ab8:	00048513          	mv	a0,s1
    80003abc:	fffff097          	auipc	ra,0xfffff
    80003ac0:	458080e7          	jalr	1112(ra) # 80002f14 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003ac4:	00048513          	mv	a0,s1
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	4a4080e7          	jalr	1188(ra) # 80002f6c <_Z14printBuddyInfoP14buddyAllocator>
    80003ad0:	02813083          	ld	ra,40(sp)
    80003ad4:	02013403          	ld	s0,32(sp)
    80003ad8:	01813483          	ld	s1,24(sp)
    80003adc:	01013903          	ld	s2,16(sp)
    80003ae0:	00813983          	ld	s3,8(sp)
    80003ae4:	03010113          	addi	sp,sp,48
    80003ae8:	00008067          	ret

0000000080003aec <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003aec:	ff010113          	addi	sp,sp,-16
    80003af0:	00113423          	sd	ra,8(sp)
    80003af4:	00813023          	sd	s0,0(sp)
    80003af8:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003afc:	00053783          	ld	a5,0(a0)
    80003b00:	0107b783          	ld	a5,16(a5)
    80003b04:	000780e7          	jalr	a5
}
    80003b08:	00813083          	ld	ra,8(sp)
    80003b0c:	00013403          	ld	s0,0(sp)
    80003b10:	01010113          	addi	sp,sp,16
    80003b14:	00008067          	ret

0000000080003b18 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003b18:	00008797          	auipc	a5,0x8
    80003b1c:	cc078793          	addi	a5,a5,-832 # 8000b7d8 <_ZTV6Thread+0x10>
    80003b20:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80003b24:	00853503          	ld	a0,8(a0)
    80003b28:	02050663          	beqz	a0,80003b54 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003b2c:	ff010113          	addi	sp,sp,-16
    80003b30:	00113423          	sd	ra,8(sp)
    80003b34:	00813023          	sd	s0,0(sp)
    80003b38:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003b3c:	fffff097          	auipc	ra,0xfffff
    80003b40:	908080e7          	jalr	-1784(ra) # 80002444 <_ZN7_threaddlEPv>
}
    80003b44:	00813083          	ld	ra,8(sp)
    80003b48:	00013403          	ld	s0,0(sp)
    80003b4c:	01010113          	addi	sp,sp,16
    80003b50:	00008067          	ret
    80003b54:	00008067          	ret

0000000080003b58 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003b58:	00008797          	auipc	a5,0x8
    80003b5c:	ca878793          	addi	a5,a5,-856 # 8000b800 <_ZTV9Semaphore+0x10>
    80003b60:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003b64:	00853503          	ld	a0,8(a0)
    80003b68:	02050663          	beqz	a0,80003b94 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003b6c:	ff010113          	addi	sp,sp,-16
    80003b70:	00113423          	sd	ra,8(sp)
    80003b74:	00813023          	sd	s0,0(sp)
    80003b78:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003b7c:	00000097          	auipc	ra,0x0
    80003b80:	464080e7          	jalr	1124(ra) # 80003fe0 <_ZN4_semdlEPv>
}
    80003b84:	00813083          	ld	ra,8(sp)
    80003b88:	00013403          	ld	s0,0(sp)
    80003b8c:	01010113          	addi	sp,sp,16
    80003b90:	00008067          	ret
    80003b94:	00008067          	ret

0000000080003b98 <_Znwm>:
{
    80003b98:	ff010113          	addi	sp,sp,-16
    80003b9c:	00113423          	sd	ra,8(sp)
    80003ba0:	00813023          	sd	s0,0(sp)
    80003ba4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003ba8:	ffffe097          	auipc	ra,0xffffe
    80003bac:	544080e7          	jalr	1348(ra) # 800020ec <_Z9mem_allocm>
}
    80003bb0:	00813083          	ld	ra,8(sp)
    80003bb4:	00013403          	ld	s0,0(sp)
    80003bb8:	01010113          	addi	sp,sp,16
    80003bbc:	00008067          	ret

0000000080003bc0 <_ZdlPv>:
{
    80003bc0:	ff010113          	addi	sp,sp,-16
    80003bc4:	00113423          	sd	ra,8(sp)
    80003bc8:	00813023          	sd	s0,0(sp)
    80003bcc:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003bd0:	ffffe097          	auipc	ra,0xffffe
    80003bd4:	54c080e7          	jalr	1356(ra) # 8000211c <_Z8mem_freePv>
}
    80003bd8:	00813083          	ld	ra,8(sp)
    80003bdc:	00013403          	ld	s0,0(sp)
    80003be0:	01010113          	addi	sp,sp,16
    80003be4:	00008067          	ret

0000000080003be8 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003be8:	fe010113          	addi	sp,sp,-32
    80003bec:	00113c23          	sd	ra,24(sp)
    80003bf0:	00813823          	sd	s0,16(sp)
    80003bf4:	00913423          	sd	s1,8(sp)
    80003bf8:	02010413          	addi	s0,sp,32
    80003bfc:	00050493          	mv	s1,a0
}
    80003c00:	00000097          	auipc	ra,0x0
    80003c04:	f18080e7          	jalr	-232(ra) # 80003b18 <_ZN6ThreadD1Ev>
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	00000097          	auipc	ra,0x0
    80003c10:	fb4080e7          	jalr	-76(ra) # 80003bc0 <_ZdlPv>
    80003c14:	01813083          	ld	ra,24(sp)
    80003c18:	01013403          	ld	s0,16(sp)
    80003c1c:	00813483          	ld	s1,8(sp)
    80003c20:	02010113          	addi	sp,sp,32
    80003c24:	00008067          	ret

0000000080003c28 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003c28:	fe010113          	addi	sp,sp,-32
    80003c2c:	00113c23          	sd	ra,24(sp)
    80003c30:	00813823          	sd	s0,16(sp)
    80003c34:	00913423          	sd	s1,8(sp)
    80003c38:	02010413          	addi	s0,sp,32
    80003c3c:	00050493          	mv	s1,a0
}
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	f18080e7          	jalr	-232(ra) # 80003b58 <_ZN9SemaphoreD1Ev>
    80003c48:	00048513          	mv	a0,s1
    80003c4c:	00000097          	auipc	ra,0x0
    80003c50:	f74080e7          	jalr	-140(ra) # 80003bc0 <_ZdlPv>
    80003c54:	01813083          	ld	ra,24(sp)
    80003c58:	01013403          	ld	s0,16(sp)
    80003c5c:	00813483          	ld	s1,8(sp)
    80003c60:	02010113          	addi	sp,sp,32
    80003c64:	00008067          	ret

0000000080003c68 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003c68:	00853503          	ld	a0,8(a0)
    80003c6c:	02050663          	beqz	a0,80003c98 <_ZN6Thread5startEv+0x30>
{
    80003c70:	ff010113          	addi	sp,sp,-16
    80003c74:	00113423          	sd	ra,8(sp)
    80003c78:	00813023          	sd	s0,0(sp)
    80003c7c:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003c80:	ffffe097          	auipc	ra,0xffffe
    80003c84:	678080e7          	jalr	1656(ra) # 800022f8 <_Z12thread_startPv>
}
    80003c88:	00813083          	ld	ra,8(sp)
    80003c8c:	00013403          	ld	s0,0(sp)
    80003c90:	01010113          	addi	sp,sp,16
    80003c94:	00008067          	ret
        return -1;
    80003c98:	fff00513          	li	a0,-1
}
    80003c9c:	00008067          	ret

0000000080003ca0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003ca0:	ff010113          	addi	sp,sp,-16
    80003ca4:	00113423          	sd	ra,8(sp)
    80003ca8:	00813023          	sd	s0,0(sp)
    80003cac:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003cb0:	ffffe097          	auipc	ra,0xffffe
    80003cb4:	518080e7          	jalr	1304(ra) # 800021c8 <_Z15thread_dispatchv>
}
    80003cb8:	00813083          	ld	ra,8(sp)
    80003cbc:	00013403          	ld	s0,0(sp)
    80003cc0:	01010113          	addi	sp,sp,16
    80003cc4:	00008067          	ret

0000000080003cc8 <_ZN6Thread5sleepEm>:
{
    80003cc8:	ff010113          	addi	sp,sp,-16
    80003ccc:	00113423          	sd	ra,8(sp)
    80003cd0:	00813023          	sd	s0,0(sp)
    80003cd4:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003cd8:	ffffe097          	auipc	ra,0xffffe
    80003cdc:	5f4080e7          	jalr	1524(ra) # 800022cc <_Z10time_sleepm>
}
    80003ce0:	00813083          	ld	ra,8(sp)
    80003ce4:	00013403          	ld	s0,0(sp)
    80003ce8:	01010113          	addi	sp,sp,16
    80003cec:	00008067          	ret

0000000080003cf0 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003cf0:	fe010113          	addi	sp,sp,-32
    80003cf4:	00113c23          	sd	ra,24(sp)
    80003cf8:	00813823          	sd	s0,16(sp)
    80003cfc:	00913423          	sd	s1,8(sp)
    80003d00:	01213023          	sd	s2,0(sp)
    80003d04:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003d08:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003d0c:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003d10:	0004b783          	ld	a5,0(s1)
    80003d14:	0187b783          	ld	a5,24(a5)
    80003d18:	00048513          	mv	a0,s1
    80003d1c:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003d20:	00090513          	mv	a0,s2
    80003d24:	00000097          	auipc	ra,0x0
    80003d28:	fa4080e7          	jalr	-92(ra) # 80003cc8 <_ZN6Thread5sleepEm>
    while(true)
    80003d2c:	fe5ff06f          	j	80003d10 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003d30 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003d30:	ff010113          	addi	sp,sp,-16
    80003d34:	00113423          	sd	ra,8(sp)
    80003d38:	00813023          	sd	s0,0(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    80003d40:	00008797          	auipc	a5,0x8
    80003d44:	a9878793          	addi	a5,a5,-1384 # 8000b7d8 <_ZTV6Thread+0x10>
    80003d48:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003d4c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80003d50:	00850513          	addi	a0,a0,8
    80003d54:	ffffe097          	auipc	ra,0xffffe
    80003d58:	5d0080e7          	jalr	1488(ra) # 80002324 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003d5c:	00813083          	ld	ra,8(sp)
    80003d60:	00013403          	ld	s0,0(sp)
    80003d64:	01010113          	addi	sp,sp,16
    80003d68:	00008067          	ret

0000000080003d6c <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003d6c:	ff010113          	addi	sp,sp,-16
    80003d70:	00113423          	sd	ra,8(sp)
    80003d74:	00813023          	sd	s0,0(sp)
    80003d78:	01010413          	addi	s0,sp,16
    80003d7c:	00008797          	auipc	a5,0x8
    80003d80:	a5c78793          	addi	a5,a5,-1444 # 8000b7d8 <_ZTV6Thread+0x10>
    80003d84:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003d88:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003d8c:	00050613          	mv	a2,a0
    80003d90:	00000597          	auipc	a1,0x0
    80003d94:	d5c58593          	addi	a1,a1,-676 # 80003aec <_ZN6Thread6runnerEPv>
    80003d98:	00850513          	addi	a0,a0,8
    80003d9c:	ffffe097          	auipc	ra,0xffffe
    80003da0:	588080e7          	jalr	1416(ra) # 80002324 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003da4:	00813083          	ld	ra,8(sp)
    80003da8:	00013403          	ld	s0,0(sp)
    80003dac:	01010113          	addi	sp,sp,16
    80003db0:	00008067          	ret

0000000080003db4 <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003db4:	00853503          	ld	a0,8(a0)
    80003db8:	02050663          	beqz	a0,80003de4 <_ZN9Semaphore4waitEv+0x30>
{
    80003dbc:	ff010113          	addi	sp,sp,-16
    80003dc0:	00113423          	sd	ra,8(sp)
    80003dc4:	00813023          	sd	s0,0(sp)
    80003dc8:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003dcc:	ffffe097          	auipc	ra,0xffffe
    80003dd0:	4a8080e7          	jalr	1192(ra) # 80002274 <_Z8sem_waitP4_sem>
}
    80003dd4:	00813083          	ld	ra,8(sp)
    80003dd8:	00013403          	ld	s0,0(sp)
    80003ddc:	01010113          	addi	sp,sp,16
    80003de0:	00008067          	ret
        return -1;
    80003de4:	fff00513          	li	a0,-1
}
    80003de8:	00008067          	ret

0000000080003dec <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003dec:	fe010113          	addi	sp,sp,-32
    80003df0:	00113c23          	sd	ra,24(sp)
    80003df4:	00813823          	sd	s0,16(sp)
    80003df8:	00913423          	sd	s1,8(sp)
    80003dfc:	02010413          	addi	s0,sp,32
    80003e00:	00050493          	mv	s1,a0
    80003e04:	00008797          	auipc	a5,0x8
    80003e08:	9fc78793          	addi	a5,a5,-1540 # 8000b800 <_ZTV9Semaphore+0x10>
    80003e0c:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80003e10:	00850513          	addi	a0,a0,8
    80003e14:	ffffe097          	auipc	ra,0xffffe
    80003e18:	3fc080e7          	jalr	1020(ra) # 80002210 <_Z8sem_openPP4_semj>
    if(retval != 0)
    80003e1c:	00050463          	beqz	a0,80003e24 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003e20:	0004b423          	sd	zero,8(s1)
}
    80003e24:	01813083          	ld	ra,24(sp)
    80003e28:	01013403          	ld	s0,16(sp)
    80003e2c:	00813483          	ld	s1,8(sp)
    80003e30:	02010113          	addi	sp,sp,32
    80003e34:	00008067          	ret

0000000080003e38 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003e38:	00853503          	ld	a0,8(a0)
    80003e3c:	02050663          	beqz	a0,80003e68 <_ZN9Semaphore6signalEv+0x30>
{
    80003e40:	ff010113          	addi	sp,sp,-16
    80003e44:	00113423          	sd	ra,8(sp)
    80003e48:	00813023          	sd	s0,0(sp)
    80003e4c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	450080e7          	jalr	1104(ra) # 800022a0 <_Z10sem_signalP4_sem>
}
    80003e58:	00813083          	ld	ra,8(sp)
    80003e5c:	00013403          	ld	s0,0(sp)
    80003e60:	01010113          	addi	sp,sp,16
    80003e64:	00008067          	ret
        return -1;
    80003e68:	fff00513          	li	a0,-1
}
    80003e6c:	00008067          	ret

0000000080003e70 <_ZN7Console4getcEv>:
{
    80003e70:	ff010113          	addi	sp,sp,-16
    80003e74:	00113423          	sd	ra,8(sp)
    80003e78:	00813023          	sd	s0,0(sp)
    80003e7c:	01010413          	addi	s0,sp,16
    return ::getc();
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	524080e7          	jalr	1316(ra) # 800023a4 <_Z4getcv>
}
    80003e88:	00813083          	ld	ra,8(sp)
    80003e8c:	00013403          	ld	s0,0(sp)
    80003e90:	01010113          	addi	sp,sp,16
    80003e94:	00008067          	ret

0000000080003e98 <_ZN7Console4putcEc>:
{
    80003e98:	ff010113          	addi	sp,sp,-16
    80003e9c:	00113423          	sd	ra,8(sp)
    80003ea0:	00813023          	sd	s0,0(sp)
    80003ea4:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80003ea8:	ffffe097          	auipc	ra,0xffffe
    80003eac:	524080e7          	jalr	1316(ra) # 800023cc <_Z4putcc>
}
    80003eb0:	00813083          	ld	ra,8(sp)
    80003eb4:	00013403          	ld	s0,0(sp)
    80003eb8:	01010113          	addi	sp,sp,16
    80003ebc:	00008067          	ret

0000000080003ec0 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003ec0:	fe010113          	addi	sp,sp,-32
    80003ec4:	00113c23          	sd	ra,24(sp)
    80003ec8:	00813823          	sd	s0,16(sp)
    80003ecc:	00913423          	sd	s1,8(sp)
    80003ed0:	01213023          	sd	s2,0(sp)
    80003ed4:	02010413          	addi	s0,sp,32
    80003ed8:	00050493          	mv	s1,a0
    80003edc:	00058913          	mv	s2,a1
    80003ee0:	01000513          	li	a0,16
    80003ee4:	00000097          	auipc	ra,0x0
    80003ee8:	cb4080e7          	jalr	-844(ra) # 80003b98 <_Znwm>
    80003eec:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003ef0:	00953023          	sd	s1,0(a0)
    80003ef4:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003ef8:	00000597          	auipc	a1,0x0
    80003efc:	df858593          	addi	a1,a1,-520 # 80003cf0 <_ZN14PeriodicThread6runnerEPv>
    80003f00:	00048513          	mv	a0,s1
    80003f04:	00000097          	auipc	ra,0x0
    80003f08:	e2c080e7          	jalr	-468(ra) # 80003d30 <_ZN6ThreadC1EPFvPvES0_>
    80003f0c:	00008797          	auipc	a5,0x8
    80003f10:	89c78793          	addi	a5,a5,-1892 # 8000b7a8 <_ZTV14PeriodicThread+0x10>
    80003f14:	00f4b023          	sd	a5,0(s1)
}
    80003f18:	01813083          	ld	ra,24(sp)
    80003f1c:	01013403          	ld	s0,16(sp)
    80003f20:	00813483          	ld	s1,8(sp)
    80003f24:	00013903          	ld	s2,0(sp)
    80003f28:	02010113          	addi	sp,sp,32
    80003f2c:	00008067          	ret

0000000080003f30 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80003f30:	ff010113          	addi	sp,sp,-16
    80003f34:	00813423          	sd	s0,8(sp)
    80003f38:	01010413          	addi	s0,sp,16
    80003f3c:	00813403          	ld	s0,8(sp)
    80003f40:	01010113          	addi	sp,sp,16
    80003f44:	00008067          	ret

0000000080003f48 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80003f48:	ff010113          	addi	sp,sp,-16
    80003f4c:	00813423          	sd	s0,8(sp)
    80003f50:	01010413          	addi	s0,sp,16
    80003f54:	00813403          	ld	s0,8(sp)
    80003f58:	01010113          	addi	sp,sp,16
    80003f5c:	00008067          	ret

0000000080003f60 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80003f60:	ff010113          	addi	sp,sp,-16
    80003f64:	00113423          	sd	ra,8(sp)
    80003f68:	00813023          	sd	s0,0(sp)
    80003f6c:	01010413          	addi	s0,sp,16
    80003f70:	00008797          	auipc	a5,0x8
    80003f74:	83878793          	addi	a5,a5,-1992 # 8000b7a8 <_ZTV14PeriodicThread+0x10>
    80003f78:	00f53023          	sd	a5,0(a0)
    80003f7c:	00000097          	auipc	ra,0x0
    80003f80:	b9c080e7          	jalr	-1124(ra) # 80003b18 <_ZN6ThreadD1Ev>
    80003f84:	00813083          	ld	ra,8(sp)
    80003f88:	00013403          	ld	s0,0(sp)
    80003f8c:	01010113          	addi	sp,sp,16
    80003f90:	00008067          	ret

0000000080003f94 <_ZN14PeriodicThreadD0Ev>:
    80003f94:	fe010113          	addi	sp,sp,-32
    80003f98:	00113c23          	sd	ra,24(sp)
    80003f9c:	00813823          	sd	s0,16(sp)
    80003fa0:	00913423          	sd	s1,8(sp)
    80003fa4:	02010413          	addi	s0,sp,32
    80003fa8:	00050493          	mv	s1,a0
    80003fac:	00007797          	auipc	a5,0x7
    80003fb0:	7fc78793          	addi	a5,a5,2044 # 8000b7a8 <_ZTV14PeriodicThread+0x10>
    80003fb4:	00f53023          	sd	a5,0(a0)
    80003fb8:	00000097          	auipc	ra,0x0
    80003fbc:	b60080e7          	jalr	-1184(ra) # 80003b18 <_ZN6ThreadD1Ev>
    80003fc0:	00048513          	mv	a0,s1
    80003fc4:	00000097          	auipc	ra,0x0
    80003fc8:	bfc080e7          	jalr	-1028(ra) # 80003bc0 <_ZdlPv>
    80003fcc:	01813083          	ld	ra,24(sp)
    80003fd0:	01013403          	ld	s0,16(sp)
    80003fd4:	00813483          	ld	s1,8(sp)
    80003fd8:	02010113          	addi	sp,sp,32
    80003fdc:	00008067          	ret

0000000080003fe0 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80003fe0:	ff010113          	addi	sp,sp,-16
    80003fe4:	00113423          	sd	ra,8(sp)
    80003fe8:	00813023          	sd	s0,0(sp)
    80003fec:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	258080e7          	jalr	600(ra) # 80002248 <_Z9sem_closeP4_sem>
}
    80003ff8:	00813083          	ld	ra,8(sp)
    80003ffc:	00013403          	ld	s0,0(sp)
    80004000:	01010113          	addi	sp,sp,16
    80004004:	00008067          	ret

0000000080004008 <_ZN5Riscv20initMemoryAllocationEv>:
bool Riscv::kernelMainCalled = false;
kmem_cache_t * Riscv::pcbCache = nullptr;
kmem_cache_t * Riscv::semaphoreCache = nullptr;

void Riscv::initMemoryAllocation()
{
    80004008:	ff010113          	addi	sp,sp,-16
    8000400c:	00113423          	sd	ra,8(sp)
    80004010:	00813023          	sd	s0,0(sp)
    80004014:	01010413          	addi	s0,sp,16
    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80004018:	00008797          	auipc	a5,0x8
    8000401c:	8287b783          	ld	a5,-2008(a5) # 8000b840 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004020:	0007b503          	ld	a0,0(a5)
    80004024:	00008797          	auipc	a5,0x8
    80004028:	8847b783          	ld	a5,-1916(a5) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x80>
    8000402c:	0007b783          	ld	a5,0(a5)
    80004030:	40a787b3          	sub	a5,a5,a0
    80004034:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    80004038:	00a00713          	li	a4,10
    8000403c:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    80004040:	00001737          	lui	a4,0x1
    80004044:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    80004048:	00e787b3          	add	a5,a5,a4

    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    8000404c:	fffff737          	lui	a4,0xfffff
    80004050:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    80004054:	00f50533          	add	a0,a0,a5
    80004058:	00000097          	auipc	ra,0x0
    8000405c:	5d0080e7          	jalr	1488(ra) # 80004628 <_ZN15MemoryAllocator10initMemoryEPv>

    //kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    //pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    //semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
}
    80004060:	00813083          	ld	ra,8(sp)
    80004064:	00013403          	ld	s0,0(sp)
    80004068:	01010113          	addi	sp,sp,16
    8000406c:	00008067          	ret

0000000080004070 <_ZN5Riscv10initSystemEv>:

void Riscv::initSystem()
{
    80004070:	fe010113          	addi	sp,sp,-32
    80004074:	00113c23          	sd	ra,24(sp)
    80004078:	00813823          	sd	s0,16(sp)
    8000407c:	00913423          	sd	s1,8(sp)
    80004080:	01213023          	sd	s2,0(sp)
    80004084:	02010413          	addi	s0,sp,32
    w_stvec((uint64)&Riscv::supervisorTrap);
    80004088:	00007797          	auipc	a5,0x7
    8000408c:	7c87b783          	ld	a5,1992(a5) # 8000b850 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80004090:	10579073          	csrw	stvec,a5

    size_t totalNumOfBytes = (size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1;
    80004094:	00007497          	auipc	s1,0x7
    80004098:	7ac4b483          	ld	s1,1964(s1) # 8000b840 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000409c:	0004b503          	ld	a0,0(s1)
    800040a0:	00008797          	auipc	a5,0x8
    800040a4:	8087b783          	ld	a5,-2040(a5) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x80>
    800040a8:	0007b783          	ld	a5,0(a5)
    800040ac:	40a787b3          	sub	a5,a5,a0
    800040b0:	00178793          	addi	a5,a5,1
    size_t bytesForKernel = totalNumOfBytes / 10; //TODO change this if needed
    800040b4:	00a00713          	li	a4,10
    800040b8:	02e7d7b3          	divu	a5,a5,a4
    size_t numOfBlocks = (bytesForKernel + BLOCK_NUM_OF_BYTES - 1) / BLOCK_NUM_OF_BYTES;
    800040bc:	00001737          	lui	a4,0x1
    800040c0:	fff70713          	addi	a4,a4,-1 # fff <_entry-0x7ffff001>
    800040c4:	00e787b3          	add	a5,a5,a4
    800040c8:	00c7d913          	srli	s2,a5,0xc
    void* newStartAddr = (void*)((size_t)HEAP_START_ADDR + numOfBlocks*BLOCK_NUM_OF_BYTES);
    800040cc:	fffff737          	lui	a4,0xfffff
    800040d0:	00e7f7b3          	and	a5,a5,a4
    MemoryAllocator::initMemory(newStartAddr);
    800040d4:	00f50533          	add	a0,a0,a5
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	550080e7          	jalr	1360(ra) # 80004628 <_ZN15MemoryAllocator10initMemoryEPv>

    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    800040e0:	0009059b          	sext.w	a1,s2
    800040e4:	0004b503          	ld	a0,0(s1)
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	8c0080e7          	jalr	-1856(ra) # 800019a8 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    800040f0:	00000693          	li	a3,0
    800040f4:	00000613          	li	a2,0
    800040f8:	06000593          	li	a1,96
    800040fc:	00005517          	auipc	a0,0x5
    80004100:	15450513          	addi	a0,a0,340 # 80009250 <CONSOLE_STATUS+0x240>
    80004104:	ffffe097          	auipc	ra,0xffffe
    80004108:	9f8080e7          	jalr	-1544(ra) # 80001afc <_Z17kmem_cache_createPKcmPFvPvES3_>
    8000410c:	0000c497          	auipc	s1,0xc
    80004110:	88c48493          	addi	s1,s1,-1908 # 8000f998 <_ZN5Riscv8pcbCacheE>
    80004114:	00a4b023          	sd	a0,0(s1)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80004118:	00000693          	li	a3,0
    8000411c:	00000613          	li	a2,0
    80004120:	01800593          	li	a1,24
    80004124:	00005517          	auipc	a0,0x5
    80004128:	13c50513          	addi	a0,a0,316 # 80009260 <CONSOLE_STATUS+0x250>
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	9d0080e7          	jalr	-1584(ra) # 80001afc <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004134:	00a4b423          	sd	a0,8(s1)

    //initMemoryAllocation();
    PCB::initialize();
    80004138:	ffffe097          	auipc	ra,0xffffe
    8000413c:	514080e7          	jalr	1300(ra) # 8000264c <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80004140:	fffff097          	auipc	ra,0xfffff
    80004144:	e70080e7          	jalr	-400(ra) # 80002fb0 <_ZN8KConsole10initializeEv>

}
    80004148:	01813083          	ld	ra,24(sp)
    8000414c:	01013403          	ld	s0,16(sp)
    80004150:	00813483          	ld	s1,8(sp)
    80004154:	00013903          	ld	s2,0(sp)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	00008067          	ret

0000000080004160 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80004160:	ff010113          	addi	sp,sp,-16
    80004164:	00813423          	sd	s0,8(sp)
    80004168:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000416c:	00200793          	li	a5,2
    80004170:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80004174:	00813403          	ld	s0,8(sp)
    80004178:	01010113          	addi	sp,sp,16
    8000417c:	00008067          	ret

0000000080004180 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80004180:	ff010113          	addi	sp,sp,-16
    80004184:	00813423          	sd	s0,8(sp)
    80004188:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    8000418c:	00200793          	li	a5,2
    80004190:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80004194:	00813403          	ld	s0,8(sp)
    80004198:	01010113          	addi	sp,sp,16
    8000419c:	00008067          	ret

00000000800041a0 <_ZN5Riscv9endSystemEv>:
{
    800041a0:	ff010113          	addi	sp,sp,-16
    800041a4:	00113423          	sd	ra,8(sp)
    800041a8:	00813023          	sd	s0,0(sp)
    800041ac:	01010413          	addi	s0,sp,16
    disableInterrupts();
    800041b0:	00000097          	auipc	ra,0x0
    800041b4:	fd0080e7          	jalr	-48(ra) # 80004180 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    800041b8:	00100793          	li	a5,1
    800041bc:	0000b717          	auipc	a4,0xb
    800041c0:	7ef70623          	sb	a5,2028(a4) # 8000f9a8 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    800041c4:	fffff097          	auipc	ra,0xfffff
    800041c8:	5a4080e7          	jalr	1444(ra) # 80003768 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    800041cc:	fe051ce3          	bnez	a0,800041c4 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    800041d0:	00007797          	auipc	a5,0x7
    800041d4:	6b87b783          	ld	a5,1720(a5) # 8000b888 <_GLOBAL_OFFSET_TABLE_+0x60>
    800041d8:	0007b503          	ld	a0,0(a5)
    800041dc:	fffff097          	auipc	ra,0xfffff
    800041e0:	538080e7          	jalr	1336(ra) # 80003714 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    800041e4:	00007797          	auipc	a5,0x7
    800041e8:	6747b783          	ld	a5,1652(a5) # 8000b858 <_GLOBAL_OFFSET_TABLE_+0x30>
    800041ec:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    800041f0:	00000097          	auipc	ra,0x0
    800041f4:	f70080e7          	jalr	-144(ra) # 80004160 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    800041f8:	00007797          	auipc	a5,0x7
    800041fc:	6907b783          	ld	a5,1680(a5) # 8000b888 <_GLOBAL_OFFSET_TABLE_+0x60>
    80004200:	0007b503          	ld	a0,0(a5)
    80004204:	ffffe097          	auipc	ra,0xffffe
    80004208:	568080e7          	jalr	1384(ra) # 8000276c <_ZN3PCB10isFinishedEv>
    8000420c:	00051863          	bnez	a0,8000421c <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    80004210:	ffffe097          	auipc	ra,0xffffe
    80004214:	fb8080e7          	jalr	-72(ra) # 800021c8 <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80004218:	fe1ff06f          	j	800041f8 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    8000421c:	00000097          	auipc	ra,0x0
    80004220:	f64080e7          	jalr	-156(ra) # 80004180 <_ZN5Riscv17disableInterruptsEv>
}
    80004224:	00813083          	ld	ra,8(sp)
    80004228:	00013403          	ld	s0,0(sp)
    8000422c:	01010113          	addi	sp,sp,16
    80004230:	00008067          	ret

0000000080004234 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80004234:	ff010113          	addi	sp,sp,-16
    80004238:	00813423          	sd	s0,8(sp)
    8000423c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80004240:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80004244:	10200073          	sret
}
    80004248:	00813403          	ld	s0,8(sp)
    8000424c:	01010113          	addi	sp,sp,16
    80004250:	00008067          	ret

0000000080004254 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80004254:	0000b797          	auipc	a5,0xb
    80004258:	7557c783          	lbu	a5,1877(a5) # 8000f9a9 <_ZN5Riscv16kernelMainCalledE>
    8000425c:	00078463          	beqz	a5,80004264 <_ZN5Riscv10kernelMainEv+0x10>
    80004260:	00008067          	ret
{
    80004264:	ff010113          	addi	sp,sp,-16
    80004268:	00113423          	sd	ra,8(sp)
    8000426c:	00813023          	sd	s0,0(sp)
    80004270:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80004274:	00100793          	li	a5,1
    80004278:	0000b717          	auipc	a4,0xb
    8000427c:	72f708a3          	sb	a5,1841(a4) # 8000f9a9 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    80004280:	00000097          	auipc	ra,0x0
    80004284:	df0080e7          	jalr	-528(ra) # 80004070 <_ZN5Riscv10initSystemEv>
    //slabCacheCreateTest2();
    //slabInitTest();
    //disableTimerInterrupts();
    enableInterrupts();
    80004288:	00000097          	auipc	ra,0x0
    8000428c:	ed8080e7          	jalr	-296(ra) # 80004160 <_ZN5Riscv16enableInterruptsEv>

    while(!PCB::userPCB->isFinished())
    80004290:	00007797          	auipc	a5,0x7
    80004294:	6007b783          	ld	a5,1536(a5) # 8000b890 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004298:	0007b503          	ld	a0,0(a5)
    8000429c:	ffffe097          	auipc	ra,0xffffe
    800042a0:	4d0080e7          	jalr	1232(ra) # 8000276c <_ZN3PCB10isFinishedEv>
    800042a4:	00051863          	bnez	a0,800042b4 <_ZN5Riscv10kernelMainEv+0x60>
    {
        thread_dispatch();
    800042a8:	ffffe097          	auipc	ra,0xffffe
    800042ac:	f20080e7          	jalr	-224(ra) # 800021c8 <_Z15thread_dispatchv>
    while(!PCB::userPCB->isFinished())
    800042b0:	fe1ff06f          	j	80004290 <_ZN5Riscv10kernelMainEv+0x3c>
    }

    //printString("End...\n");
    endSystem();
    800042b4:	00000097          	auipc	ra,0x0
    800042b8:	eec080e7          	jalr	-276(ra) # 800041a0 <_ZN5Riscv9endSystemEv>
}
    800042bc:	00813083          	ld	ra,8(sp)
    800042c0:	00013403          	ld	s0,0(sp)
    800042c4:	01010113          	addi	sp,sp,16
    800042c8:	00008067          	ret

00000000800042cc <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    800042cc:	ff010113          	addi	sp,sp,-16
    800042d0:	00113423          	sd	ra,8(sp)
    800042d4:	00813023          	sd	s0,0(sp)
    800042d8:	01010413          	addi	s0,sp,16
    userMain();
    800042dc:	00002097          	auipc	ra,0x2
    800042e0:	a6c080e7          	jalr	-1428(ra) # 80005d48 <_Z8userMainv>
}
    800042e4:	00813083          	ld	ra,8(sp)
    800042e8:	00013403          	ld	s0,0(sp)
    800042ec:	01010113          	addi	sp,sp,16
    800042f0:	00008067          	ret

00000000800042f4 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    800042f4:	ff010113          	addi	sp,sp,-16
    800042f8:	00813423          	sd	s0,8(sp)
    800042fc:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80004300:	00200793          	li	a5,2
    80004304:	1047b073          	csrc	sie,a5
}
    80004308:	00813403          	ld	s0,8(sp)
    8000430c:	01010113          	addi	sp,sp,16
    80004310:	00008067          	ret

0000000080004314 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80004314:	ff010113          	addi	sp,sp,-16
    80004318:	00813423          	sd	s0,8(sp)
    8000431c:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80004320:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80004324:	00007717          	auipc	a4,0x7
    80004328:	57c73703          	ld	a4,1404(a4) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000432c:	00073703          	ld	a4,0(a4)
    80004330:	01073703          	ld	a4,16(a4)
    80004334:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80004338:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    8000433c:	00078593          	mv	a1,a5
}
    80004340:	00813403          	ld	s0,8(sp)
    80004344:	01010113          	addi	sp,sp,16
    80004348:	00008067          	ret

000000008000434c <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    8000434c:	ff010113          	addi	sp,sp,-16
    80004350:	00813423          	sd	s0,8(sp)
    80004354:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80004358:	00007797          	auipc	a5,0x7
    8000435c:	5487b783          	ld	a5,1352(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004360:	0007b783          	ld	a5,0(a5)
    80004364:	0007c783          	lbu	a5,0(a5)
    80004368:	00078c63          	beqz	a5,80004380 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    8000436c:	10000793          	li	a5,256
    80004370:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80004374:	00813403          	ld	s0,8(sp)
    80004378:	01010113          	addi	sp,sp,16
    8000437c:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004380:	10000793          	li	a5,256
    80004384:	1007b073          	csrc	sstatus,a5
    80004388:	fedff06f          	j	80004374 <_ZN5Riscv14changePrivModeEv+0x28>

000000008000438c <_ZN5Riscv20handleSupervisorTrapEv>:
{
    8000438c:	f9010113          	addi	sp,sp,-112
    80004390:	06113423          	sd	ra,104(sp)
    80004394:	06813023          	sd	s0,96(sp)
    80004398:	04913c23          	sd	s1,88(sp)
    8000439c:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800043a0:	00070713          	mv	a4,a4
    800043a4:	00007797          	auipc	a5,0x7
    800043a8:	51c7b783          	ld	a5,1308(a5) # 8000b8c0 <_GLOBAL_OFFSET_TABLE_+0x98>
    800043ac:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800043b0:	00007797          	auipc	a5,0x7
    800043b4:	4f07b783          	ld	a5,1264(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800043b8:	0007b783          	ld	a5,0(a5)
    800043bc:	14002773          	csrr	a4,sscratch
    800043c0:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800043c4:	142027f3          	csrr	a5,scause
    800043c8:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800043cc:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    800043d0:	00900713          	li	a4,9
    800043d4:	02f76e63          	bltu	a4,a5,80004410 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    800043d8:	00800713          	li	a4,8
    800043dc:	12e7f463          	bgeu	a5,a4,80004504 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    800043e0:	00500713          	li	a4,5
    800043e4:	10e78a63          	beq	a5,a4,800044f8 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    800043e8:	00700713          	li	a4,7
    800043ec:	00e79863          	bne	a5,a4,800043fc <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    800043f0:	ffffe097          	auipc	ra,0xffffe
    800043f4:	3a0080e7          	jalr	928(ra) # 80002790 <_ZN3PCB17threadExitHandlerEv>
            break;
    800043f8:	0dc0006f          	j	800044d4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    800043fc:	00200713          	li	a4,2
    80004400:	0ce79a63          	bne	a5,a4,800044d4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80004404:	ffffe097          	auipc	ra,0xffffe
    80004408:	38c080e7          	jalr	908(ra) # 80002790 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000440c:	0c80006f          	j	800044d4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    80004410:	fff00713          	li	a4,-1
    80004414:	03f71713          	slli	a4,a4,0x3f
    80004418:	00170713          	addi	a4,a4,1
    8000441c:	02e78863          	beq	a5,a4,8000444c <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    80004420:	fff00713          	li	a4,-1
    80004424:	03f71713          	slli	a4,a4,0x3f
    80004428:	00970713          	addi	a4,a4,9
    8000442c:	0ae79463          	bne	a5,a4,800044d4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    80004430:	fffff097          	auipc	ra,0xfffff
    80004434:	c98080e7          	jalr	-872(ra) # 800030c8 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80004438:	00002097          	auipc	ra,0x2
    8000443c:	4ac080e7          	jalr	1196(ra) # 800068e4 <plic_claim>
    80004440:	00002097          	auipc	ra,0x2
    80004444:	4dc080e7          	jalr	1244(ra) # 8000691c <plic_complete>
            break;
    80004448:	08c0006f          	j	800044d4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000444c:	141027f3          	csrr	a5,sepc
    80004450:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80004454:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80004458:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000445c:	100027f3          	csrr	a5,sstatus
    80004460:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80004464:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004468:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    8000446c:	00200793          	li	a5,2
    80004470:	1447b073          	csrc	sip,a5
            totalTime++;
    80004474:	0000b717          	auipc	a4,0xb
    80004478:	52470713          	addi	a4,a4,1316 # 8000f998 <_ZN5Riscv8pcbCacheE>
    8000447c:	01873783          	ld	a5,24(a4)
    80004480:	00178793          	addi	a5,a5,1
    80004484:	00f73c23          	sd	a5,24(a4)
            PCB::timeSliceCounter++;
    80004488:	00007497          	auipc	s1,0x7
    8000448c:	3e04b483          	ld	s1,992(s1) # 8000b868 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004490:	0004b783          	ld	a5,0(s1)
    80004494:	00178793          	addi	a5,a5,1
    80004498:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    8000449c:	fffff097          	auipc	ra,0xfffff
    800044a0:	168080e7          	jalr	360(ra) # 80003604 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800044a4:	00007797          	auipc	a5,0x7
    800044a8:	3fc7b783          	ld	a5,1020(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    800044ac:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800044b0:	0187b783          	ld	a5,24(a5)
    800044b4:	0004b703          	ld	a4,0(s1)
    800044b8:	02f77863          	bgeu	a4,a5,800044e8 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    800044bc:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800044c0:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800044c4:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800044c8:	14179073          	csrw	sepc,a5
            changePrivMode();
    800044cc:	00000097          	auipc	ra,0x0
    800044d0:	e80080e7          	jalr	-384(ra) # 8000434c <_ZN5Riscv14changePrivModeEv>
}
    800044d4:	06813083          	ld	ra,104(sp)
    800044d8:	06013403          	ld	s0,96(sp)
    800044dc:	05813483          	ld	s1,88(sp)
    800044e0:	07010113          	addi	sp,sp,112
    800044e4:	00008067          	ret
                PCB::timeSliceCounter = 0;
    800044e8:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    800044ec:	ffffe097          	auipc	ra,0xffffe
    800044f0:	03c080e7          	jalr	60(ra) # 80002528 <_ZN3PCB8dispatchEv>
    800044f4:	fc9ff06f          	j	800044bc <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    800044f8:	ffffe097          	auipc	ra,0xffffe
    800044fc:	298080e7          	jalr	664(ra) # 80002790 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004500:	fd5ff06f          	j	800044d4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004504:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004508:	14102773          	csrr	a4,sepc
    8000450c:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80004510:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004514:	00470713          	addi	a4,a4,4
    80004518:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    8000451c:	10002773          	csrr	a4,sstatus
    80004520:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80004524:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004528:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    8000452c:	04300713          	li	a4,67
    80004530:	02f76463          	bltu	a4,a5,80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    80004534:	00279793          	slli	a5,a5,0x2
    80004538:	00005717          	auipc	a4,0x5
    8000453c:	d3c70713          	addi	a4,a4,-708 # 80009274 <CONSOLE_STATUS+0x264>
    80004540:	00e787b3          	add	a5,a5,a4
    80004544:	0007a783          	lw	a5,0(a5)
    80004548:	00e787b3          	add	a5,a5,a4
    8000454c:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80004550:	00000097          	auipc	ra,0x0
    80004554:	4f0080e7          	jalr	1264(ra) # 80004a40 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80004558:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    8000455c:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004560:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80004564:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004568:	00000097          	auipc	ra,0x0
    8000456c:	de4080e7          	jalr	-540(ra) # 8000434c <_ZN5Riscv14changePrivModeEv>
}
    80004570:	f65ff06f          	j	800044d4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    80004574:	00000097          	auipc	ra,0x0
    80004578:	530080e7          	jalr	1328(ra) # 80004aa4 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    8000457c:	fddff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	3d4080e7          	jalr	980(ra) # 80002954 <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80004588:	fd1ff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	2e4080e7          	jalr	740(ra) # 80002870 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    80004594:	fc5ff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    80004598:	ffffe097          	auipc	ra,0xffffe
    8000459c:	378080e7          	jalr	888(ra) # 80002910 <_ZN3PCB18threadStartHandlerEv>
                    break;
    800045a0:	fb9ff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    800045a4:	ffffe097          	auipc	ra,0xffffe
    800045a8:	238080e7          	jalr	568(ra) # 800027dc <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    800045ac:	fadff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    800045b0:	ffffe097          	auipc	ra,0xffffe
    800045b4:	1e0080e7          	jalr	480(ra) # 80002790 <_ZN3PCB17threadExitHandlerEv>
                    break;
    800045b8:	fa1ff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    800045bc:	ffffe097          	auipc	ra,0xffffe
    800045c0:	250080e7          	jalr	592(ra) # 8000280c <_ZN3PCB18threadSleepHandlerEv>
                    break;
    800045c4:	f95ff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    800045c8:	ffffe097          	auipc	ra,0xffffe
    800045cc:	420080e7          	jalr	1056(ra) # 800029e8 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    800045d0:	f89ff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    800045d4:	00001097          	auipc	ra,0x1
    800045d8:	92c080e7          	jalr	-1748(ra) # 80004f00 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    800045dc:	f7dff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    800045e0:	00001097          	auipc	ra,0x1
    800045e4:	9d0080e7          	jalr	-1584(ra) # 80004fb0 <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    800045e8:	f71ff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    800045ec:	00001097          	auipc	ra,0x1
    800045f0:	a18080e7          	jalr	-1512(ra) # 80005004 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    800045f4:	f65ff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    800045f8:	00001097          	auipc	ra,0x1
    800045fc:	a50080e7          	jalr	-1456(ra) # 80005048 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004600:	f59ff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    80004604:	fffff097          	auipc	ra,0xfffff
    80004608:	cc8080e7          	jalr	-824(ra) # 800032cc <_ZN8KConsole11getcHandlerEv>
                    break;
    8000460c:	f4dff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    80004610:	fffff097          	auipc	ra,0xfffff
    80004614:	c8c080e7          	jalr	-884(ra) # 8000329c <_ZN8KConsole11putcHandlerEv>
                    break;
    80004618:	f41ff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    8000461c:	fffff097          	auipc	ra,0xfffff
    80004620:	e0c080e7          	jalr	-500(ra) # 80003428 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004624:	f35ff06f          	j	80004558 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

0000000080004628 <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    80004628:	ff010113          	addi	sp,sp,-16
    8000462c:	00813423          	sd	s0,8(sp)
    80004630:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004634:	0000b717          	auipc	a4,0xb
    80004638:	38472703          	lw	a4,900(a4) # 8000f9b8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000463c:	00100793          	li	a5,1
    80004640:	02f70c63          	beq	a4,a5,80004678 <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    80004644:	0000b797          	auipc	a5,0xb
    80004648:	37478793          	addi	a5,a5,884 # 8000f9b8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000464c:	00100713          	li	a4,1
    80004650:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004654:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    80004658:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    8000465c:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    80004660:	00007797          	auipc	a5,0x7
    80004664:	2487b783          	ld	a5,584(a5) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004668:	0007b783          	ld	a5,0(a5)
    8000466c:	40a787b3          	sub	a5,a5,a0
    80004670:	ff178793          	addi	a5,a5,-15
    80004674:	00f53023          	sd	a5,0(a0)
}
    80004678:	00813403          	ld	s0,8(sp)
    8000467c:	01010113          	addi	sp,sp,16
    80004680:	00008067          	ret

0000000080004684 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004684:	ff010113          	addi	sp,sp,-16
    80004688:	00813423          	sd	s0,8(sp)
    8000468c:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004690:	0000b797          	auipc	a5,0xb
    80004694:	3287a783          	lw	a5,808(a5) # 8000f9b8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004698:	02078a63          	beqz	a5,800046cc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    8000469c:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    800046a0:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    800046a4:	0000b797          	auipc	a5,0xb
    800046a8:	31c7b783          	ld	a5,796(a5) # 8000f9c0 <_ZN15MemoryAllocator13headAllocatedE>
    800046ac:	02078663          	beqz	a5,800046d8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    800046b0:	00007717          	auipc	a4,0x7
    800046b4:	1f873703          	ld	a4,504(a4) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x80>
    800046b8:	00073703          	ld	a4,0(a4)
    800046bc:	02c76463          	bltu	a4,a2,800046e4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    800046c0:	00863783          	ld	a5,8(a2)
    800046c4:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    800046c8:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    800046cc:	00813403          	ld	s0,8(sp)
    800046d0:	01010113          	addi	sp,sp,16
    800046d4:	00008067          	ret
        headAllocated = newAllocated;
    800046d8:	0000b797          	auipc	a5,0xb
    800046dc:	2ea7b423          	sd	a0,744(a5) # 8000f9c0 <_ZN15MemoryAllocator13headAllocatedE>
    800046e0:	fedff06f          	j	800046cc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    800046e4:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    800046e8:	0000b797          	auipc	a5,0xb
    800046ec:	2ca7bc23          	sd	a0,728(a5) # 8000f9c0 <_ZN15MemoryAllocator13headAllocatedE>
    800046f0:	fddff06f          	j	800046cc <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

00000000800046f4 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    800046f4:	ff010113          	addi	sp,sp,-16
    800046f8:	00813423          	sd	s0,8(sp)
    800046fc:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004700:	0000b797          	auipc	a5,0xb
    80004704:	2b87a783          	lw	a5,696(a5) # 8000f9b8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004708:	02078c63          	beqz	a5,80004740 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    8000470c:	0000b797          	auipc	a5,0xb
    80004710:	2b47b783          	ld	a5,692(a5) # 8000f9c0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004714:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004718:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    8000471c:	00000713          	li	a4,0
    while(curr != 0)
    80004720:	00078c63          	beqz	a5,80004738 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004724:	00f56863          	bltu	a0,a5,80004734 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004728:	00078713          	mv	a4,a5
        curr = curr->next;
    8000472c:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004730:	ff1ff06f          	j	80004720 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    80004734:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004738:	00070a63          	beqz	a4,8000474c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    8000473c:	00a73423          	sd	a0,8(a4)
}
    80004740:	00813403          	ld	s0,8(sp)
    80004744:	01010113          	addi	sp,sp,16
    80004748:	00008067          	ret
        headAllocated = newAllocated;
    8000474c:	0000b797          	auipc	a5,0xb
    80004750:	26a7ba23          	sd	a0,628(a5) # 8000f9c0 <_ZN15MemoryAllocator13headAllocatedE>
    80004754:	fedff06f          	j	80004740 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

0000000080004758 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004758:	0000b797          	auipc	a5,0xb
    8000475c:	2607a783          	lw	a5,608(a5) # 8000f9b8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004760:	0e078e63          	beqz	a5,8000485c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    80004764:	fe010113          	addi	sp,sp,-32
    80004768:	00113c23          	sd	ra,24(sp)
    8000476c:	00813823          	sd	s0,16(sp)
    80004770:	00913423          	sd	s1,8(sp)
    80004774:	02010413          	addi	s0,sp,32
    80004778:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    8000477c:	0000b497          	auipc	s1,0xb
    80004780:	24c4b483          	ld	s1,588(s1) # 8000f9c8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004784:	00000713          	li	a4,0
    while(curr != 0)
    80004788:	0a048e63          	beqz	s1,80004844 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    8000478c:	0004b783          	ld	a5,0(s1)
    80004790:	00b7f863          	bgeu	a5,a1,800047a0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004794:	00048713          	mv	a4,s1
        curr = curr->next;
    80004798:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    8000479c:	fedff06f          	j	80004788 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800047a0:	01058693          	addi	a3,a1,16
    800047a4:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    800047a8:	01078613          	addi	a2,a5,16
    800047ac:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    800047b0:	00007517          	auipc	a0,0x7
    800047b4:	0f853503          	ld	a0,248(a0) # 8000b8a8 <_GLOBAL_OFFSET_TABLE_+0x80>
    800047b8:	00053503          	ld	a0,0(a0)
    800047bc:	06d56063          	bltu	a0,a3,8000481c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    800047c0:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    800047c4:	01000813          	li	a6,16
    800047c8:	02a87663          	bgeu	a6,a0,800047f4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    800047cc:	0084b783          	ld	a5,8(s1)
    800047d0:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800047d4:	ff050513          	addi	a0,a0,-16
    800047d8:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    800047dc:	00070663          	beqz	a4,800047e8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    800047e0:	00d73423          	sd	a3,8(a4)
    800047e4:	0400006f          	j	80004824 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    800047e8:	0000b797          	auipc	a5,0xb
    800047ec:	1ed7b023          	sd	a3,480(a5) # 8000f9c8 <_ZN15MemoryAllocator8headFreeE>
    800047f0:	0340006f          	j	80004824 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    800047f4:	00070a63          	beqz	a4,80004808 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    800047f8:	0084b683          	ld	a3,8(s1)
    800047fc:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004800:	00078593          	mv	a1,a5
    80004804:	0200006f          	j	80004824 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004808:	0084b703          	ld	a4,8(s1)
    8000480c:	0000b697          	auipc	a3,0xb
    80004810:	1ae6be23          	sd	a4,444(a3) # 8000f9c8 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004814:	00078593          	mv	a1,a5
    80004818:	00c0006f          	j	80004824 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    8000481c:	00070e63          	beqz	a4,80004838 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    80004820:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004824:	00048513          	mv	a0,s1
    80004828:	00000097          	auipc	ra,0x0
    8000482c:	e5c080e7          	jalr	-420(ra) # 80004684 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004830:	01048513          	addi	a0,s1,16
            break;
    80004834:	0140006f          	j	80004848 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004838:	0000b797          	auipc	a5,0xb
    8000483c:	1807b823          	sd	zero,400(a5) # 8000f9c8 <_ZN15MemoryAllocator8headFreeE>
    80004840:	fe5ff06f          	j	80004824 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004844:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004848:	01813083          	ld	ra,24(sp)
    8000484c:	01013403          	ld	s0,16(sp)
    80004850:	00813483          	ld	s1,8(sp)
    80004854:	02010113          	addi	sp,sp,32
    80004858:	00008067          	ret
        return nullptr;
    8000485c:	00000513          	li	a0,0
}
    80004860:	00008067          	ret

0000000080004864 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004864:	ff010113          	addi	sp,sp,-16
    80004868:	00113423          	sd	ra,8(sp)
    8000486c:	00813023          	sd	s0,0(sp)
    80004870:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004874:	00000097          	auipc	ra,0x0
    80004878:	ee4080e7          	jalr	-284(ra) # 80004758 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    8000487c:	00813083          	ld	ra,8(sp)
    80004880:	00013403          	ld	s0,0(sp)
    80004884:	01010113          	addi	sp,sp,16
    80004888:	00008067          	ret

000000008000488c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    8000488c:	ff010113          	addi	sp,sp,-16
    80004890:	00813423          	sd	s0,8(sp)
    80004894:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004898:	0000b797          	auipc	a5,0xb
    8000489c:	1207a783          	lw	a5,288(a5) # 8000f9b8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800048a0:	06078263          	beqz	a5,80004904 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800048a4:	0000b797          	auipc	a5,0xb
    800048a8:	1247b783          	ld	a5,292(a5) # 8000f9c8 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800048ac:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    800048b0:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    800048b4:	00000713          	li	a4,0
    while(curr != 0)
    800048b8:	00078c63          	beqz	a5,800048d0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    800048bc:	00f56863          	bltu	a0,a5,800048cc <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800048c0:	00078713          	mv	a4,a5
        curr = curr->next;
    800048c4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800048c8:	ff1ff06f          	j	800048b8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    800048cc:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    800048d0:	04070063          	beqz	a4,80004910 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    800048d4:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    800048d8:	00853783          	ld	a5,8(a0)
    800048dc:	00078a63          	beqz	a5,800048f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    800048e0:	00053603          	ld	a2,0(a0)
    800048e4:	01060693          	addi	a3,a2,16
    800048e8:	00d506b3          	add	a3,a0,a3
    800048ec:	02d78863          	beq	a5,a3,8000491c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    800048f0:	00070a63          	beqz	a4,80004904 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    800048f4:	00073683          	ld	a3,0(a4)
    800048f8:	01068793          	addi	a5,a3,16
    800048fc:	00f707b3          	add	a5,a4,a5
    80004900:	02a78c63          	beq	a5,a0,80004938 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004904:	00813403          	ld	s0,8(sp)
    80004908:	01010113          	addi	sp,sp,16
    8000490c:	00008067          	ret
        headFree = newSegment;
    80004910:	0000b797          	auipc	a5,0xb
    80004914:	0aa7bc23          	sd	a0,184(a5) # 8000f9c8 <_ZN15MemoryAllocator8headFreeE>
    80004918:	fc1ff06f          	j	800048d8 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    8000491c:	0007b683          	ld	a3,0(a5)
    80004920:	00d60633          	add	a2,a2,a3
    80004924:	01060613          	addi	a2,a2,16
    80004928:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    8000492c:	0087b783          	ld	a5,8(a5)
    80004930:	00f53423          	sd	a5,8(a0)
    80004934:	fbdff06f          	j	800048f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004938:	00053783          	ld	a5,0(a0)
    8000493c:	00f686b3          	add	a3,a3,a5
    80004940:	01068693          	addi	a3,a3,16
    80004944:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004948:	00853783          	ld	a5,8(a0)
    8000494c:	00f73423          	sd	a5,8(a4)
    80004950:	fb5ff06f          	j	80004904 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

0000000080004954 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004954:	0000b797          	auipc	a5,0xb
    80004958:	0647a783          	lw	a5,100(a5) # 8000f9b8 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    8000495c:	08078263          	beqz	a5,800049e0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    80004960:	fe010113          	addi	sp,sp,-32
    80004964:	00113c23          	sd	ra,24(sp)
    80004968:	00813823          	sd	s0,16(sp)
    8000496c:	00913423          	sd	s1,8(sp)
    80004970:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004974:	0000b497          	auipc	s1,0xb
    80004978:	04c4b483          	ld	s1,76(s1) # 8000f9c0 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    8000497c:	00000713          	li	a4,0
    while(curr != 0)
    80004980:	02048a63          	beqz	s1,800049b4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004984:	01048793          	addi	a5,s1,16
    80004988:	00a78863          	beq	a5,a0,80004998 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    8000498c:	00048713          	mv	a4,s1
        curr = curr->next;
    80004990:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004994:	fedff06f          	j	80004980 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80004998:	02070c63          	beqz	a4,800049d0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    8000499c:	0084b783          	ld	a5,8(s1)
    800049a0:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800049a4:	0004b583          	ld	a1,0(s1)
    800049a8:	00048513          	mv	a0,s1
    800049ac:	00000097          	auipc	ra,0x0
    800049b0:	ee0080e7          	jalr	-288(ra) # 8000488c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800049b4:	02048a63          	beqz	s1,800049e8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    800049b8:	00000513          	li	a0,0
    else
        return 1;
}
    800049bc:	01813083          	ld	ra,24(sp)
    800049c0:	01013403          	ld	s0,16(sp)
    800049c4:	00813483          	ld	s1,8(sp)
    800049c8:	02010113          	addi	sp,sp,32
    800049cc:	00008067          	ret
                headAllocated = curr->next;
    800049d0:	0084b783          	ld	a5,8(s1)
    800049d4:	0000b717          	auipc	a4,0xb
    800049d8:	fef73623          	sd	a5,-20(a4) # 8000f9c0 <_ZN15MemoryAllocator13headAllocatedE>
    800049dc:	fc9ff06f          	j	800049a4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    800049e0:	00100513          	li	a0,1
}
    800049e4:	00008067          	ret
        return 1;
    800049e8:	00100513          	li	a0,1
    800049ec:	fd1ff06f          	j	800049bc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

00000000800049f0 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    800049f0:	ff010113          	addi	sp,sp,-16
    800049f4:	00113423          	sd	ra,8(sp)
    800049f8:	00813023          	sd	s0,0(sp)
    800049fc:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004a00:	00000097          	auipc	ra,0x0
    80004a04:	f54080e7          	jalr	-172(ra) # 80004954 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004a08:	00813083          	ld	ra,8(sp)
    80004a0c:	00013403          	ld	s0,0(sp)
    80004a10:	01010113          	addi	sp,sp,16
    80004a14:	00008067          	ret

0000000080004a18 <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004a18:	ff010113          	addi	sp,sp,-16
    80004a1c:	00113423          	sd	ra,8(sp)
    80004a20:	00813023          	sd	s0,0(sp)
    80004a24:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004a28:	00000097          	auipc	ra,0x0
    80004a2c:	e3c080e7          	jalr	-452(ra) # 80004864 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004a30:	00813083          	ld	ra,8(sp)
    80004a34:	00013403          	ld	s0,0(sp)
    80004a38:	01010113          	addi	sp,sp,16
    80004a3c:	00008067          	ret

0000000080004a40 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004a40:	ff010113          	addi	sp,sp,-16
    80004a44:	00113423          	sd	ra,8(sp)
    80004a48:	00813023          	sd	s0,0(sp)
    80004a4c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004a50:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004a54:	00651513          	slli	a0,a0,0x6
    80004a58:	00000097          	auipc	ra,0x0
    80004a5c:	fc0080e7          	jalr	-64(ra) # 80004a18 <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004a60:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004a64:	00000097          	auipc	ra,0x0
    80004a68:	8b0080e7          	jalr	-1872(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004a6c:	00813083          	ld	ra,8(sp)
    80004a70:	00013403          	ld	s0,0(sp)
    80004a74:	01010113          	addi	sp,sp,16
    80004a78:	00008067          	ret

0000000080004a7c <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004a7c:	ff010113          	addi	sp,sp,-16
    80004a80:	00113423          	sd	ra,8(sp)
    80004a84:	00813023          	sd	s0,0(sp)
    80004a88:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004a8c:	00000097          	auipc	ra,0x0
    80004a90:	f64080e7          	jalr	-156(ra) # 800049f0 <_ZN15MemoryAllocator8mem_freeEPv>
    80004a94:	00813083          	ld	ra,8(sp)
    80004a98:	00013403          	ld	s0,0(sp)
    80004a9c:	01010113          	addi	sp,sp,16
    80004aa0:	00008067          	ret

0000000080004aa4 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004aa4:	ff010113          	addi	sp,sp,-16
    80004aa8:	00113423          	sd	ra,8(sp)
    80004aac:	00813023          	sd	s0,0(sp)
    80004ab0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004ab4:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004ab8:	00000097          	auipc	ra,0x0
    80004abc:	fc4080e7          	jalr	-60(ra) # 80004a7c <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004ac0:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004ac4:	00000097          	auipc	ra,0x0
    80004ac8:	850080e7          	jalr	-1968(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004acc:	00813083          	ld	ra,8(sp)
    80004ad0:	00013403          	ld	s0,0(sp)
    80004ad4:	01010113          	addi	sp,sp,16
    80004ad8:	00008067          	ret

0000000080004adc <_Z12slabInitTestv>:
#include "../h/slabTests.hpp"

void slabInitTest()
{
    80004adc:	ff010113          	addi	sp,sp,-16
    80004ae0:	00113423          	sd	ra,8(sp)
    80004ae4:	00813023          	sd	s0,0(sp)
    80004ae8:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004aec:	00f00593          	li	a1,15
    80004af0:	00007797          	auipc	a5,0x7
    80004af4:	d507b783          	ld	a5,-688(a5) # 8000b840 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004af8:	0007b503          	ld	a0,0(a5)
    80004afc:	ffffd097          	auipc	ra,0xffffd
    80004b00:	eac080e7          	jalr	-340(ra) # 800019a8 <_Z9kmem_initPvi>
}
    80004b04:	00813083          	ld	ra,8(sp)
    80004b08:	00013403          	ld	s0,0(sp)
    80004b0c:	01010113          	addi	sp,sp,16
    80004b10:	00008067          	ret

0000000080004b14 <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004b14:	fe010113          	addi	sp,sp,-32
    80004b18:	00113c23          	sd	ra,24(sp)
    80004b1c:	00813823          	sd	s0,16(sp)
    80004b20:	00913423          	sd	s1,8(sp)
    80004b24:	01213023          	sd	s2,0(sp)
    80004b28:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004b2c:	00f00593          	li	a1,15
    80004b30:	00007797          	auipc	a5,0x7
    80004b34:	d107b783          	ld	a5,-752(a5) # 8000b840 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004b38:	0007b503          	ld	a0,0(a5)
    80004b3c:	ffffd097          	auipc	ra,0xffffd
    80004b40:	e6c080e7          	jalr	-404(ra) # 800019a8 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004b44:	00000693          	li	a3,0
    80004b48:	00000613          	li	a2,0
    80004b4c:	00a00593          	li	a1,10
    80004b50:	00005517          	auipc	a0,0x5
    80004b54:	83850513          	addi	a0,a0,-1992 # 80009388 <CONSOLE_STATUS+0x378>
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	fa4080e7          	jalr	-92(ra) # 80001afc <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004b60:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004b64:	00000693          	li	a3,0
    80004b68:	00000613          	li	a2,0
    80004b6c:	00a00593          	li	a1,10
    80004b70:	00005517          	auipc	a0,0x5
    80004b74:	82850513          	addi	a0,a0,-2008 # 80009398 <CONSOLE_STATUS+0x388>
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	f84080e7          	jalr	-124(ra) # 80001afc <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004b80:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004b84:	00000693          	li	a3,0
    80004b88:	00000613          	li	a2,0
    80004b8c:	00a00593          	li	a1,10
    80004b90:	00005517          	auipc	a0,0x5
    80004b94:	81850513          	addi	a0,a0,-2024 # 800093a8 <CONSOLE_STATUS+0x398>
    80004b98:	ffffd097          	auipc	ra,0xffffd
    80004b9c:	f64080e7          	jalr	-156(ra) # 80001afc <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004ba0:	00048a63          	beqz	s1,80004bb4 <_Z19slabCacheCreateTestv+0xa0>
    80004ba4:	00090863          	beqz	s2,80004bb4 <_Z19slabCacheCreateTestv+0xa0>
    80004ba8:	00050663          	beqz	a0,80004bb4 <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004bac:	ffffd097          	auipc	ra,0xffffd
    80004bb0:	180080e7          	jalr	384(ra) # 80001d2c <_Z22printSlabAllocatorInfov>
}
    80004bb4:	01813083          	ld	ra,24(sp)
    80004bb8:	01013403          	ld	s0,16(sp)
    80004bbc:	00813483          	ld	s1,8(sp)
    80004bc0:	00013903          	ld	s2,0(sp)
    80004bc4:	02010113          	addi	sp,sp,32
    80004bc8:	00008067          	ret

0000000080004bcc <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004bcc:	fe010113          	addi	sp,sp,-32
    80004bd0:	00113c23          	sd	ra,24(sp)
    80004bd4:	00813823          	sd	s0,16(sp)
    80004bd8:	00913423          	sd	s1,8(sp)
    80004bdc:	01213023          	sd	s2,0(sp)
    80004be0:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004be4:	00f00593          	li	a1,15
    80004be8:	00007797          	auipc	a5,0x7
    80004bec:	c587b783          	ld	a5,-936(a5) # 8000b840 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004bf0:	0007b503          	ld	a0,0(a5)
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	db4080e7          	jalr	-588(ra) # 800019a8 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004bfc:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004c00:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004c04:	04400793          	li	a5,68
    80004c08:	0297c663          	blt	a5,s1,80004c34 <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004c0c:	00000693          	li	a3,0
    80004c10:	00000613          	li	a2,0
    80004c14:	00a00593          	li	a1,10
    80004c18:	00004517          	auipc	a0,0x4
    80004c1c:	77050513          	addi	a0,a0,1904 # 80009388 <CONSOLE_STATUS+0x378>
    80004c20:	ffffd097          	auipc	ra,0xffffd
    80004c24:	edc080e7          	jalr	-292(ra) # 80001afc <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004c28:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004c2c:	0014849b          	addiw	s1,s1,1
    80004c30:	fd5ff06f          	j	80004c04 <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004c34:	ffffd097          	auipc	ra,0xffffd
    80004c38:	0f8080e7          	jalr	248(ra) # 80001d2c <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004c3c:	00090513          	mv	a0,s2
    80004c40:	ffffd097          	auipc	ra,0xffffd
    80004c44:	3fc080e7          	jalr	1020(ra) # 8000203c <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004c48:	ffffd097          	auipc	ra,0xffffd
    80004c4c:	0e4080e7          	jalr	228(ra) # 80001d2c <_Z22printSlabAllocatorInfov>
    80004c50:	01813083          	ld	ra,24(sp)
    80004c54:	01013403          	ld	s0,16(sp)
    80004c58:	00813483          	ld	s1,8(sp)
    80004c5c:	00013903          	ld	s2,0(sp)
    80004c60:	02010113          	addi	sp,sp,32
    80004c64:	00008067          	ret

0000000080004c68 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004c68:	ff010113          	addi	sp,sp,-16
    80004c6c:	00813423          	sd	s0,8(sp)
    80004c70:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80004c74:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004c78:	00053423          	sd	zero,8(a0)
    80004c7c:	00053023          	sd	zero,0(a0)
}
    80004c80:	00813403          	ld	s0,8(sp)
    80004c84:	01010113          	addi	sp,sp,16
    80004c88:	00008067          	ret

0000000080004c8c <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004c8c:	ff010113          	addi	sp,sp,-16
    80004c90:	00813423          	sd	s0,8(sp)
    80004c94:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004c98:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004c9c:	00053783          	ld	a5,0(a0)
    80004ca0:	00078e63          	beqz	a5,80004cbc <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004ca4:	00853783          	ld	a5,8(a0)
    80004ca8:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004cac:	00b53423          	sd	a1,8(a0)
    }
}
    80004cb0:	00813403          	ld	s0,8(sp)
    80004cb4:	01010113          	addi	sp,sp,16
    80004cb8:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004cbc:	00b53423          	sd	a1,8(a0)
    80004cc0:	00b53023          	sd	a1,0(a0)
    80004cc4:	fedff06f          	j	80004cb0 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004cc8 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004cc8:	ff010113          	addi	sp,sp,-16
    80004ccc:	00113423          	sd	ra,8(sp)
    80004cd0:	00813023          	sd	s0,0(sp)
    80004cd4:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004cd8:	00007797          	auipc	a5,0x7
    80004cdc:	bc87b783          	ld	a5,-1080(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004ce0:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004ce4:	00200793          	li	a5,2
    80004ce8:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004cec:	00000097          	auipc	ra,0x0
    80004cf0:	fa0080e7          	jalr	-96(ra) # 80004c8c <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004cf4:	ffffe097          	auipc	ra,0xffffe
    80004cf8:	834080e7          	jalr	-1996(ra) # 80002528 <_ZN3PCB8dispatchEv>
}
    80004cfc:	00813083          	ld	ra,8(sp)
    80004d00:	00013403          	ld	s0,0(sp)
    80004d04:	01010113          	addi	sp,sp,16
    80004d08:	00008067          	ret

0000000080004d0c <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80004d0c:	00007797          	auipc	a5,0x7
    80004d10:	b947b783          	ld	a5,-1132(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004d14:	0007b783          	ld	a5,0(a5)
    80004d18:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80004d1c:	01052783          	lw	a5,16(a0)
    80004d20:	fff7879b          	addiw	a5,a5,-1
    80004d24:	00f52823          	sw	a5,16(a0)
    80004d28:	02079713          	slli	a4,a5,0x20
    80004d2c:	00074663          	bltz	a4,80004d38 <_ZN10KSemaphore4waitEv+0x2c>
}
    80004d30:	00000513          	li	a0,0
    80004d34:	00008067          	ret
{
    80004d38:	ff010113          	addi	sp,sp,-16
    80004d3c:	00113423          	sd	ra,8(sp)
    80004d40:	00813023          	sd	s0,0(sp)
    80004d44:	01010413          	addi	s0,sp,16
        block();
    80004d48:	00000097          	auipc	ra,0x0
    80004d4c:	f80080e7          	jalr	-128(ra) # 80004cc8 <_ZN10KSemaphore5blockEv>
}
    80004d50:	00000513          	li	a0,0
    80004d54:	00813083          	ld	ra,8(sp)
    80004d58:	00013403          	ld	s0,0(sp)
    80004d5c:	01010113          	addi	sp,sp,16
    80004d60:	00008067          	ret

0000000080004d64 <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004d64:	ff010113          	addi	sp,sp,-16
    80004d68:	00813423          	sd	s0,8(sp)
    80004d6c:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004d70:	00053503          	ld	a0,0(a0)
    80004d74:	00813403          	ld	s0,8(sp)
    80004d78:	01010113          	addi	sp,sp,16
    80004d7c:	00008067          	ret

0000000080004d80 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004d80:	ff010113          	addi	sp,sp,-16
    80004d84:	00813423          	sd	s0,8(sp)
    80004d88:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004d8c:	00053783          	ld	a5,0(a0)
    80004d90:	00078c63          	beqz	a5,80004da8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004d94:	0087b703          	ld	a4,8(a5)
    80004d98:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004d9c:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004da0:	00053783          	ld	a5,0(a0)
    80004da4:	00078863          	beqz	a5,80004db4 <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004da8:	00813403          	ld	s0,8(sp)
    80004dac:	01010113          	addi	sp,sp,16
    80004db0:	00008067          	ret
        tailBlocked =0;
    80004db4:	00053423          	sd	zero,8(a0)
    80004db8:	ff1ff06f          	j	80004da8 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004dbc <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004dbc:	fe010113          	addi	sp,sp,-32
    80004dc0:	00113c23          	sd	ra,24(sp)
    80004dc4:	00813823          	sd	s0,16(sp)
    80004dc8:	00913423          	sd	s1,8(sp)
    80004dcc:	01213023          	sd	s2,0(sp)
    80004dd0:	02010413          	addi	s0,sp,32
    80004dd4:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004dd8:	00090513          	mv	a0,s2
    80004ddc:	00000097          	auipc	ra,0x0
    80004de0:	f88080e7          	jalr	-120(ra) # 80004d64 <_ZN10KSemaphore15getFirstBlockedEv>
    80004de4:	00050493          	mv	s1,a0
    80004de8:	02050463          	beqz	a0,80004e10 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80004dec:	00090513          	mv	a0,s2
    80004df0:	00000097          	auipc	ra,0x0
    80004df4:	f90080e7          	jalr	-112(ra) # 80004d80 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80004df8:	00100793          	li	a5,1
    80004dfc:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80004e00:	00048513          	mv	a0,s1
    80004e04:	fffff097          	auipc	ra,0xfffff
    80004e08:	910080e7          	jalr	-1776(ra) # 80003714 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004e0c:	fcdff06f          	j	80004dd8 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004e10:	01813083          	ld	ra,24(sp)
    80004e14:	01013403          	ld	s0,16(sp)
    80004e18:	00813483          	ld	s1,8(sp)
    80004e1c:	00013903          	ld	s2,0(sp)
    80004e20:	02010113          	addi	sp,sp,32
    80004e24:	00008067          	ret

0000000080004e28 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004e28:	fe010113          	addi	sp,sp,-32
    80004e2c:	00113c23          	sd	ra,24(sp)
    80004e30:	00813823          	sd	s0,16(sp)
    80004e34:	00913423          	sd	s1,8(sp)
    80004e38:	01213023          	sd	s2,0(sp)
    80004e3c:	02010413          	addi	s0,sp,32
    80004e40:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004e44:	00000097          	auipc	ra,0x0
    80004e48:	f20080e7          	jalr	-224(ra) # 80004d64 <_ZN10KSemaphore15getFirstBlockedEv>
    80004e4c:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004e50:	00090513          	mv	a0,s2
    80004e54:	00000097          	auipc	ra,0x0
    80004e58:	f2c080e7          	jalr	-212(ra) # 80004d80 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004e5c:	00048863          	beqz	s1,80004e6c <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80004e60:	00048513          	mv	a0,s1
    80004e64:	fffff097          	auipc	ra,0xfffff
    80004e68:	8b0080e7          	jalr	-1872(ra) # 80003714 <_ZN9Scheduler3putEP3PCB>
    }
}
    80004e6c:	01813083          	ld	ra,24(sp)
    80004e70:	01013403          	ld	s0,16(sp)
    80004e74:	00813483          	ld	s1,8(sp)
    80004e78:	00013903          	ld	s2,0(sp)
    80004e7c:	02010113          	addi	sp,sp,32
    80004e80:	00008067          	ret

0000000080004e84 <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004e84:	01052783          	lw	a5,16(a0)
    80004e88:	0017879b          	addiw	a5,a5,1
    80004e8c:	0007871b          	sext.w	a4,a5
    80004e90:	00f52823          	sw	a5,16(a0)
    80004e94:	00e05663          	blez	a4,80004ea0 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004e98:	00000513          	li	a0,0
    80004e9c:	00008067          	ret
uint64 KSemaphore::signal() {
    80004ea0:	ff010113          	addi	sp,sp,-16
    80004ea4:	00113423          	sd	ra,8(sp)
    80004ea8:	00813023          	sd	s0,0(sp)
    80004eac:	01010413          	addi	s0,sp,16
        unblock();
    80004eb0:	00000097          	auipc	ra,0x0
    80004eb4:	f78080e7          	jalr	-136(ra) # 80004e28 <_ZN10KSemaphore7unblockEv>
}
    80004eb8:	00000513          	li	a0,0
    80004ebc:	00813083          	ld	ra,8(sp)
    80004ec0:	00013403          	ld	s0,0(sp)
    80004ec4:	01010113          	addi	sp,sp,16
    80004ec8:	00008067          	ret

0000000080004ecc <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80004ecc:	ff010113          	addi	sp,sp,-16
    80004ed0:	00113423          	sd	ra,8(sp)
    80004ed4:	00813023          	sd	s0,0(sp)
    80004ed8:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    80004edc:	00007797          	auipc	a5,0x7
    80004ee0:	96c7b783          	ld	a5,-1684(a5) # 8000b848 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004ee4:	0007b503          	ld	a0,0(a5)
    80004ee8:	ffffd097          	auipc	ra,0xffffd
    80004eec:	af8080e7          	jalr	-1288(ra) # 800019e0 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80004ef0:	00813083          	ld	ra,8(sp)
    80004ef4:	00013403          	ld	s0,0(sp)
    80004ef8:	01010113          	addi	sp,sp,16
    80004efc:	00008067          	ret

0000000080004f00 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80004f00:	fd010113          	addi	sp,sp,-48
    80004f04:	02113423          	sd	ra,40(sp)
    80004f08:	02813023          	sd	s0,32(sp)
    80004f0c:	00913c23          	sd	s1,24(sp)
    80004f10:	01213823          	sd	s2,16(sp)
    80004f14:	01313423          	sd	s3,8(sp)
    80004f18:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004f1c:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80004f20:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80004f24:	01800513          	li	a0,24
    80004f28:	00000097          	auipc	ra,0x0
    80004f2c:	fa4080e7          	jalr	-92(ra) # 80004ecc <_ZN10KSemaphorenwEm>
    80004f30:	00050493          	mv	s1,a0
    80004f34:	0009859b          	sext.w	a1,s3
    80004f38:	00000097          	auipc	ra,0x0
    80004f3c:	d30080e7          	jalr	-720(ra) # 80004c68 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80004f40:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80004f44:	02048663          	beqz	s1,80004f70 <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    80004f48:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004f4c:	fffff097          	auipc	ra,0xfffff
    80004f50:	3c8080e7          	jalr	968(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004f54:	02813083          	ld	ra,40(sp)
    80004f58:	02013403          	ld	s0,32(sp)
    80004f5c:	01813483          	ld	s1,24(sp)
    80004f60:	01013903          	ld	s2,16(sp)
    80004f64:	00813983          	ld	s3,8(sp)
    80004f68:	03010113          	addi	sp,sp,48
    80004f6c:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004f70:	fff00513          	li	a0,-1
    80004f74:	fd9ff06f          	j	80004f4c <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004f78 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004f78:	ff010113          	addi	sp,sp,-16
    80004f7c:	00113423          	sd	ra,8(sp)
    80004f80:	00813023          	sd	s0,0(sp)
    80004f84:	01010413          	addi	s0,sp,16
    80004f88:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    80004f8c:	00007797          	auipc	a5,0x7
    80004f90:	8bc7b783          	ld	a5,-1860(a5) # 8000b848 <_GLOBAL_OFFSET_TABLE_+0x20>
    80004f94:	0007b503          	ld	a0,0(a5)
    80004f98:	ffffd097          	auipc	ra,0xffffd
    80004f9c:	c10080e7          	jalr	-1008(ra) # 80001ba8 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    80004fa0:	00813083          	ld	ra,8(sp)
    80004fa4:	00013403          	ld	s0,0(sp)
    80004fa8:	01010113          	addi	sp,sp,16
    80004fac:	00008067          	ret

0000000080004fb0 <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004fb0:	ff010113          	addi	sp,sp,-16
    80004fb4:	00113423          	sd	ra,8(sp)
    80004fb8:	00813023          	sd	s0,0(sp)
    80004fbc:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004fc0:	00058513          	mv	a0,a1
    kSem->wait();
    80004fc4:	00000097          	auipc	ra,0x0
    80004fc8:	d48080e7          	jalr	-696(ra) # 80004d0c <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80004fcc:	00007797          	auipc	a5,0x7
    80004fd0:	8d47b783          	ld	a5,-1836(a5) # 8000b8a0 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004fd4:	0007b783          	ld	a5,0(a5)
    80004fd8:	0587c783          	lbu	a5,88(a5)
    80004fdc:	02078063          	beqz	a5,80004ffc <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80004fe0:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80004fe4:	fffff097          	auipc	ra,0xfffff
    80004fe8:	330080e7          	jalr	816(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004fec:	00813083          	ld	ra,8(sp)
    80004ff0:	00013403          	ld	s0,0(sp)
    80004ff4:	01010113          	addi	sp,sp,16
    80004ff8:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004ffc:	00000513          	li	a0,0
    80005000:	fe5ff06f          	j	80004fe4 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080005004 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80005004:	ff010113          	addi	sp,sp,-16
    80005008:	00113423          	sd	ra,8(sp)
    8000500c:	00813023          	sd	s0,0(sp)
    80005010:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005014:	00058513          	mv	a0,a1
    if (kSem == 0)
    80005018:	02050463          	beqz	a0,80005040 <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    8000501c:	00000097          	auipc	ra,0x0
    80005020:	e68080e7          	jalr	-408(ra) # 80004e84 <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80005024:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80005028:	fffff097          	auipc	ra,0xfffff
    8000502c:	2ec080e7          	jalr	748(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005030:	00813083          	ld	ra,8(sp)
    80005034:	00013403          	ld	s0,0(sp)
    80005038:	01010113          	addi	sp,sp,16
    8000503c:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80005040:	00100513          	li	a0,1
    80005044:	fe5ff06f          	j	80005028 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080005048 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80005048:	fe010113          	addi	sp,sp,-32
    8000504c:	00113c23          	sd	ra,24(sp)
    80005050:	00813823          	sd	s0,16(sp)
    80005054:	00913423          	sd	s1,8(sp)
    80005058:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    8000505c:	00058493          	mv	s1,a1
    delete kSem;
    80005060:	00048e63          	beqz	s1,8000507c <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80005064:	00048513          	mv	a0,s1
    80005068:	00000097          	auipc	ra,0x0
    8000506c:	d54080e7          	jalr	-684(ra) # 80004dbc <_ZN10KSemaphoreD1Ev>
    80005070:	00048513          	mv	a0,s1
    80005074:	00000097          	auipc	ra,0x0
    80005078:	f04080e7          	jalr	-252(ra) # 80004f78 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    8000507c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005080:	fffff097          	auipc	ra,0xfffff
    80005084:	294080e7          	jalr	660(ra) # 80004314 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005088:	01813083          	ld	ra,24(sp)
    8000508c:	01013403          	ld	s0,16(sp)
    80005090:	00813483          	ld	s1,8(sp)
    80005094:	02010113          	addi	sp,sp,32
    80005098:	00008067          	ret

000000008000509c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000509c:	fe010113          	addi	sp,sp,-32
    800050a0:	00113c23          	sd	ra,24(sp)
    800050a4:	00813823          	sd	s0,16(sp)
    800050a8:	00913423          	sd	s1,8(sp)
    800050ac:	02010413          	addi	s0,sp,32
    800050b0:	00050493          	mv	s1,a0
    LOCK();
    800050b4:	00100613          	li	a2,1
    800050b8:	00000593          	li	a1,0
    800050bc:	0000b517          	auipc	a0,0xb
    800050c0:	91450513          	addi	a0,a0,-1772 # 8000f9d0 <lockPrint>
    800050c4:	ffffc097          	auipc	ra,0xffffc
    800050c8:	154080e7          	jalr	340(ra) # 80001218 <copy_and_swap>
    800050cc:	fe0514e3          	bnez	a0,800050b4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800050d0:	0004c503          	lbu	a0,0(s1)
    800050d4:	00050a63          	beqz	a0,800050e8 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800050d8:	ffffd097          	auipc	ra,0xffffd
    800050dc:	2f4080e7          	jalr	756(ra) # 800023cc <_Z4putcc>
        string++;
    800050e0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800050e4:	fedff06f          	j	800050d0 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800050e8:	00000613          	li	a2,0
    800050ec:	00100593          	li	a1,1
    800050f0:	0000b517          	auipc	a0,0xb
    800050f4:	8e050513          	addi	a0,a0,-1824 # 8000f9d0 <lockPrint>
    800050f8:	ffffc097          	auipc	ra,0xffffc
    800050fc:	120080e7          	jalr	288(ra) # 80001218 <copy_and_swap>
    80005100:	fe0514e3          	bnez	a0,800050e8 <_Z11printStringPKc+0x4c>
}
    80005104:	01813083          	ld	ra,24(sp)
    80005108:	01013403          	ld	s0,16(sp)
    8000510c:	00813483          	ld	s1,8(sp)
    80005110:	02010113          	addi	sp,sp,32
    80005114:	00008067          	ret

0000000080005118 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005118:	fd010113          	addi	sp,sp,-48
    8000511c:	02113423          	sd	ra,40(sp)
    80005120:	02813023          	sd	s0,32(sp)
    80005124:	00913c23          	sd	s1,24(sp)
    80005128:	01213823          	sd	s2,16(sp)
    8000512c:	01313423          	sd	s3,8(sp)
    80005130:	01413023          	sd	s4,0(sp)
    80005134:	03010413          	addi	s0,sp,48
    80005138:	00050993          	mv	s3,a0
    8000513c:	00058a13          	mv	s4,a1
    LOCK();
    80005140:	00100613          	li	a2,1
    80005144:	00000593          	li	a1,0
    80005148:	0000b517          	auipc	a0,0xb
    8000514c:	88850513          	addi	a0,a0,-1912 # 8000f9d0 <lockPrint>
    80005150:	ffffc097          	auipc	ra,0xffffc
    80005154:	0c8080e7          	jalr	200(ra) # 80001218 <copy_and_swap>
    80005158:	fe0514e3          	bnez	a0,80005140 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000515c:	00000913          	li	s2,0
    80005160:	00090493          	mv	s1,s2
    80005164:	0019091b          	addiw	s2,s2,1
    80005168:	03495a63          	bge	s2,s4,8000519c <_Z9getStringPci+0x84>
        cc = getc();
    8000516c:	ffffd097          	auipc	ra,0xffffd
    80005170:	238080e7          	jalr	568(ra) # 800023a4 <_Z4getcv>
        if(cc < 1)
    80005174:	02050463          	beqz	a0,8000519c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80005178:	009984b3          	add	s1,s3,s1
    8000517c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005180:	00a00793          	li	a5,10
    80005184:	00f50a63          	beq	a0,a5,80005198 <_Z9getStringPci+0x80>
    80005188:	00d00793          	li	a5,13
    8000518c:	fcf51ae3          	bne	a0,a5,80005160 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80005190:	00090493          	mv	s1,s2
    80005194:	0080006f          	j	8000519c <_Z9getStringPci+0x84>
    80005198:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000519c:	009984b3          	add	s1,s3,s1
    800051a0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800051a4:	00000613          	li	a2,0
    800051a8:	00100593          	li	a1,1
    800051ac:	0000b517          	auipc	a0,0xb
    800051b0:	82450513          	addi	a0,a0,-2012 # 8000f9d0 <lockPrint>
    800051b4:	ffffc097          	auipc	ra,0xffffc
    800051b8:	064080e7          	jalr	100(ra) # 80001218 <copy_and_swap>
    800051bc:	fe0514e3          	bnez	a0,800051a4 <_Z9getStringPci+0x8c>
    return buf;
}
    800051c0:	00098513          	mv	a0,s3
    800051c4:	02813083          	ld	ra,40(sp)
    800051c8:	02013403          	ld	s0,32(sp)
    800051cc:	01813483          	ld	s1,24(sp)
    800051d0:	01013903          	ld	s2,16(sp)
    800051d4:	00813983          	ld	s3,8(sp)
    800051d8:	00013a03          	ld	s4,0(sp)
    800051dc:	03010113          	addi	sp,sp,48
    800051e0:	00008067          	ret

00000000800051e4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800051e4:	ff010113          	addi	sp,sp,-16
    800051e8:	00813423          	sd	s0,8(sp)
    800051ec:	01010413          	addi	s0,sp,16
    800051f0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800051f4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800051f8:	0006c603          	lbu	a2,0(a3)
    800051fc:	fd06071b          	addiw	a4,a2,-48
    80005200:	0ff77713          	andi	a4,a4,255
    80005204:	00900793          	li	a5,9
    80005208:	02e7e063          	bltu	a5,a4,80005228 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000520c:	0025179b          	slliw	a5,a0,0x2
    80005210:	00a787bb          	addw	a5,a5,a0
    80005214:	0017979b          	slliw	a5,a5,0x1
    80005218:	00168693          	addi	a3,a3,1
    8000521c:	00c787bb          	addw	a5,a5,a2
    80005220:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005224:	fd5ff06f          	j	800051f8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005228:	00813403          	ld	s0,8(sp)
    8000522c:	01010113          	addi	sp,sp,16
    80005230:	00008067          	ret

0000000080005234 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005234:	fc010113          	addi	sp,sp,-64
    80005238:	02113c23          	sd	ra,56(sp)
    8000523c:	02813823          	sd	s0,48(sp)
    80005240:	02913423          	sd	s1,40(sp)
    80005244:	03213023          	sd	s2,32(sp)
    80005248:	01313c23          	sd	s3,24(sp)
    8000524c:	04010413          	addi	s0,sp,64
    80005250:	00050493          	mv	s1,a0
    80005254:	00058913          	mv	s2,a1
    80005258:	00060993          	mv	s3,a2
    LOCK();
    8000525c:	00100613          	li	a2,1
    80005260:	00000593          	li	a1,0
    80005264:	0000a517          	auipc	a0,0xa
    80005268:	76c50513          	addi	a0,a0,1900 # 8000f9d0 <lockPrint>
    8000526c:	ffffc097          	auipc	ra,0xffffc
    80005270:	fac080e7          	jalr	-84(ra) # 80001218 <copy_and_swap>
    80005274:	fe0514e3          	bnez	a0,8000525c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005278:	00098463          	beqz	s3,80005280 <_Z8printIntiii+0x4c>
    8000527c:	0804c463          	bltz	s1,80005304 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005280:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005284:	00000593          	li	a1,0
    }

    i = 0;
    80005288:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000528c:	0009079b          	sext.w	a5,s2
    80005290:	0325773b          	remuw	a4,a0,s2
    80005294:	00048613          	mv	a2,s1
    80005298:	0014849b          	addiw	s1,s1,1
    8000529c:	02071693          	slli	a3,a4,0x20
    800052a0:	0206d693          	srli	a3,a3,0x20
    800052a4:	00006717          	auipc	a4,0x6
    800052a8:	56c70713          	addi	a4,a4,1388 # 8000b810 <digits>
    800052ac:	00d70733          	add	a4,a4,a3
    800052b0:	00074683          	lbu	a3,0(a4)
    800052b4:	fd040713          	addi	a4,s0,-48
    800052b8:	00c70733          	add	a4,a4,a2
    800052bc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800052c0:	0005071b          	sext.w	a4,a0
    800052c4:	0325553b          	divuw	a0,a0,s2
    800052c8:	fcf772e3          	bgeu	a4,a5,8000528c <_Z8printIntiii+0x58>
    if(neg)
    800052cc:	00058c63          	beqz	a1,800052e4 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800052d0:	fd040793          	addi	a5,s0,-48
    800052d4:	009784b3          	add	s1,a5,s1
    800052d8:	02d00793          	li	a5,45
    800052dc:	fef48823          	sb	a5,-16(s1)
    800052e0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800052e4:	fff4849b          	addiw	s1,s1,-1
    800052e8:	0204c463          	bltz	s1,80005310 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800052ec:	fd040793          	addi	a5,s0,-48
    800052f0:	009787b3          	add	a5,a5,s1
    800052f4:	ff07c503          	lbu	a0,-16(a5)
    800052f8:	ffffd097          	auipc	ra,0xffffd
    800052fc:	0d4080e7          	jalr	212(ra) # 800023cc <_Z4putcc>
    80005300:	fe5ff06f          	j	800052e4 <_Z8printIntiii+0xb0>
        x = -xx;
    80005304:	4090053b          	negw	a0,s1
        neg = 1;
    80005308:	00100593          	li	a1,1
        x = -xx;
    8000530c:	f7dff06f          	j	80005288 <_Z8printIntiii+0x54>

    UNLOCK();
    80005310:	00000613          	li	a2,0
    80005314:	00100593          	li	a1,1
    80005318:	0000a517          	auipc	a0,0xa
    8000531c:	6b850513          	addi	a0,a0,1720 # 8000f9d0 <lockPrint>
    80005320:	ffffc097          	auipc	ra,0xffffc
    80005324:	ef8080e7          	jalr	-264(ra) # 80001218 <copy_and_swap>
    80005328:	fe0514e3          	bnez	a0,80005310 <_Z8printIntiii+0xdc>
}
    8000532c:	03813083          	ld	ra,56(sp)
    80005330:	03013403          	ld	s0,48(sp)
    80005334:	02813483          	ld	s1,40(sp)
    80005338:	02013903          	ld	s2,32(sp)
    8000533c:	01813983          	ld	s3,24(sp)
    80005340:	04010113          	addi	sp,sp,64
    80005344:	00008067          	ret

0000000080005348 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005348:	fd010113          	addi	sp,sp,-48
    8000534c:	02113423          	sd	ra,40(sp)
    80005350:	02813023          	sd	s0,32(sp)
    80005354:	00913c23          	sd	s1,24(sp)
    80005358:	01213823          	sd	s2,16(sp)
    8000535c:	01313423          	sd	s3,8(sp)
    80005360:	03010413          	addi	s0,sp,48
    80005364:	00050493          	mv	s1,a0
    80005368:	00058913          	mv	s2,a1
    8000536c:	0015879b          	addiw	a5,a1,1
    80005370:	0007851b          	sext.w	a0,a5
    80005374:	00f4a023          	sw	a5,0(s1)
    80005378:	0004a823          	sw	zero,16(s1)
    8000537c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005380:	00251513          	slli	a0,a0,0x2
    80005384:	ffffd097          	auipc	ra,0xffffd
    80005388:	d68080e7          	jalr	-664(ra) # 800020ec <_Z9mem_allocm>
    8000538c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005390:	01000513          	li	a0,16
    80005394:	fffff097          	auipc	ra,0xfffff
    80005398:	804080e7          	jalr	-2044(ra) # 80003b98 <_Znwm>
    8000539c:	00050993          	mv	s3,a0
    800053a0:	00000593          	li	a1,0
    800053a4:	fffff097          	auipc	ra,0xfffff
    800053a8:	a48080e7          	jalr	-1464(ra) # 80003dec <_ZN9SemaphoreC1Ej>
    800053ac:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800053b0:	01000513          	li	a0,16
    800053b4:	ffffe097          	auipc	ra,0xffffe
    800053b8:	7e4080e7          	jalr	2020(ra) # 80003b98 <_Znwm>
    800053bc:	00050993          	mv	s3,a0
    800053c0:	00090593          	mv	a1,s2
    800053c4:	fffff097          	auipc	ra,0xfffff
    800053c8:	a28080e7          	jalr	-1496(ra) # 80003dec <_ZN9SemaphoreC1Ej>
    800053cc:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800053d0:	01000513          	li	a0,16
    800053d4:	ffffe097          	auipc	ra,0xffffe
    800053d8:	7c4080e7          	jalr	1988(ra) # 80003b98 <_Znwm>
    800053dc:	00050913          	mv	s2,a0
    800053e0:	00100593          	li	a1,1
    800053e4:	fffff097          	auipc	ra,0xfffff
    800053e8:	a08080e7          	jalr	-1528(ra) # 80003dec <_ZN9SemaphoreC1Ej>
    800053ec:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800053f0:	01000513          	li	a0,16
    800053f4:	ffffe097          	auipc	ra,0xffffe
    800053f8:	7a4080e7          	jalr	1956(ra) # 80003b98 <_Znwm>
    800053fc:	00050913          	mv	s2,a0
    80005400:	00100593          	li	a1,1
    80005404:	fffff097          	auipc	ra,0xfffff
    80005408:	9e8080e7          	jalr	-1560(ra) # 80003dec <_ZN9SemaphoreC1Ej>
    8000540c:	0324b823          	sd	s2,48(s1)
}
    80005410:	02813083          	ld	ra,40(sp)
    80005414:	02013403          	ld	s0,32(sp)
    80005418:	01813483          	ld	s1,24(sp)
    8000541c:	01013903          	ld	s2,16(sp)
    80005420:	00813983          	ld	s3,8(sp)
    80005424:	03010113          	addi	sp,sp,48
    80005428:	00008067          	ret
    8000542c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005430:	00098513          	mv	a0,s3
    80005434:	ffffe097          	auipc	ra,0xffffe
    80005438:	78c080e7          	jalr	1932(ra) # 80003bc0 <_ZdlPv>
    8000543c:	00048513          	mv	a0,s1
    80005440:	0000b097          	auipc	ra,0xb
    80005444:	668080e7          	jalr	1640(ra) # 80010aa8 <_Unwind_Resume>
    80005448:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000544c:	00098513          	mv	a0,s3
    80005450:	ffffe097          	auipc	ra,0xffffe
    80005454:	770080e7          	jalr	1904(ra) # 80003bc0 <_ZdlPv>
    80005458:	00048513          	mv	a0,s1
    8000545c:	0000b097          	auipc	ra,0xb
    80005460:	64c080e7          	jalr	1612(ra) # 80010aa8 <_Unwind_Resume>
    80005464:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005468:	00090513          	mv	a0,s2
    8000546c:	ffffe097          	auipc	ra,0xffffe
    80005470:	754080e7          	jalr	1876(ra) # 80003bc0 <_ZdlPv>
    80005474:	00048513          	mv	a0,s1
    80005478:	0000b097          	auipc	ra,0xb
    8000547c:	630080e7          	jalr	1584(ra) # 80010aa8 <_Unwind_Resume>
    80005480:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005484:	00090513          	mv	a0,s2
    80005488:	ffffe097          	auipc	ra,0xffffe
    8000548c:	738080e7          	jalr	1848(ra) # 80003bc0 <_ZdlPv>
    80005490:	00048513          	mv	a0,s1
    80005494:	0000b097          	auipc	ra,0xb
    80005498:	614080e7          	jalr	1556(ra) # 80010aa8 <_Unwind_Resume>

000000008000549c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000549c:	fe010113          	addi	sp,sp,-32
    800054a0:	00113c23          	sd	ra,24(sp)
    800054a4:	00813823          	sd	s0,16(sp)
    800054a8:	00913423          	sd	s1,8(sp)
    800054ac:	01213023          	sd	s2,0(sp)
    800054b0:	02010413          	addi	s0,sp,32
    800054b4:	00050493          	mv	s1,a0
    800054b8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800054bc:	01853503          	ld	a0,24(a0)
    800054c0:	fffff097          	auipc	ra,0xfffff
    800054c4:	8f4080e7          	jalr	-1804(ra) # 80003db4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800054c8:	0304b503          	ld	a0,48(s1)
    800054cc:	fffff097          	auipc	ra,0xfffff
    800054d0:	8e8080e7          	jalr	-1816(ra) # 80003db4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800054d4:	0084b783          	ld	a5,8(s1)
    800054d8:	0144a703          	lw	a4,20(s1)
    800054dc:	00271713          	slli	a4,a4,0x2
    800054e0:	00e787b3          	add	a5,a5,a4
    800054e4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800054e8:	0144a783          	lw	a5,20(s1)
    800054ec:	0017879b          	addiw	a5,a5,1
    800054f0:	0004a703          	lw	a4,0(s1)
    800054f4:	02e7e7bb          	remw	a5,a5,a4
    800054f8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800054fc:	0304b503          	ld	a0,48(s1)
    80005500:	fffff097          	auipc	ra,0xfffff
    80005504:	938080e7          	jalr	-1736(ra) # 80003e38 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005508:	0204b503          	ld	a0,32(s1)
    8000550c:	fffff097          	auipc	ra,0xfffff
    80005510:	92c080e7          	jalr	-1748(ra) # 80003e38 <_ZN9Semaphore6signalEv>

}
    80005514:	01813083          	ld	ra,24(sp)
    80005518:	01013403          	ld	s0,16(sp)
    8000551c:	00813483          	ld	s1,8(sp)
    80005520:	00013903          	ld	s2,0(sp)
    80005524:	02010113          	addi	sp,sp,32
    80005528:	00008067          	ret

000000008000552c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000552c:	fe010113          	addi	sp,sp,-32
    80005530:	00113c23          	sd	ra,24(sp)
    80005534:	00813823          	sd	s0,16(sp)
    80005538:	00913423          	sd	s1,8(sp)
    8000553c:	01213023          	sd	s2,0(sp)
    80005540:	02010413          	addi	s0,sp,32
    80005544:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005548:	02053503          	ld	a0,32(a0)
    8000554c:	fffff097          	auipc	ra,0xfffff
    80005550:	868080e7          	jalr	-1944(ra) # 80003db4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005554:	0284b503          	ld	a0,40(s1)
    80005558:	fffff097          	auipc	ra,0xfffff
    8000555c:	85c080e7          	jalr	-1956(ra) # 80003db4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005560:	0084b703          	ld	a4,8(s1)
    80005564:	0104a783          	lw	a5,16(s1)
    80005568:	00279693          	slli	a3,a5,0x2
    8000556c:	00d70733          	add	a4,a4,a3
    80005570:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005574:	0017879b          	addiw	a5,a5,1
    80005578:	0004a703          	lw	a4,0(s1)
    8000557c:	02e7e7bb          	remw	a5,a5,a4
    80005580:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005584:	0284b503          	ld	a0,40(s1)
    80005588:	fffff097          	auipc	ra,0xfffff
    8000558c:	8b0080e7          	jalr	-1872(ra) # 80003e38 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005590:	0184b503          	ld	a0,24(s1)
    80005594:	fffff097          	auipc	ra,0xfffff
    80005598:	8a4080e7          	jalr	-1884(ra) # 80003e38 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000559c:	00090513          	mv	a0,s2
    800055a0:	01813083          	ld	ra,24(sp)
    800055a4:	01013403          	ld	s0,16(sp)
    800055a8:	00813483          	ld	s1,8(sp)
    800055ac:	00013903          	ld	s2,0(sp)
    800055b0:	02010113          	addi	sp,sp,32
    800055b4:	00008067          	ret

00000000800055b8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800055b8:	fe010113          	addi	sp,sp,-32
    800055bc:	00113c23          	sd	ra,24(sp)
    800055c0:	00813823          	sd	s0,16(sp)
    800055c4:	00913423          	sd	s1,8(sp)
    800055c8:	01213023          	sd	s2,0(sp)
    800055cc:	02010413          	addi	s0,sp,32
    800055d0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800055d4:	02853503          	ld	a0,40(a0)
    800055d8:	ffffe097          	auipc	ra,0xffffe
    800055dc:	7dc080e7          	jalr	2012(ra) # 80003db4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800055e0:	0304b503          	ld	a0,48(s1)
    800055e4:	ffffe097          	auipc	ra,0xffffe
    800055e8:	7d0080e7          	jalr	2000(ra) # 80003db4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800055ec:	0144a783          	lw	a5,20(s1)
    800055f0:	0104a903          	lw	s2,16(s1)
    800055f4:	0327ce63          	blt	a5,s2,80005630 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800055f8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800055fc:	0304b503          	ld	a0,48(s1)
    80005600:	fffff097          	auipc	ra,0xfffff
    80005604:	838080e7          	jalr	-1992(ra) # 80003e38 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005608:	0284b503          	ld	a0,40(s1)
    8000560c:	fffff097          	auipc	ra,0xfffff
    80005610:	82c080e7          	jalr	-2004(ra) # 80003e38 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005614:	00090513          	mv	a0,s2
    80005618:	01813083          	ld	ra,24(sp)
    8000561c:	01013403          	ld	s0,16(sp)
    80005620:	00813483          	ld	s1,8(sp)
    80005624:	00013903          	ld	s2,0(sp)
    80005628:	02010113          	addi	sp,sp,32
    8000562c:	00008067          	ret
        ret = cap - head + tail;
    80005630:	0004a703          	lw	a4,0(s1)
    80005634:	4127093b          	subw	s2,a4,s2
    80005638:	00f9093b          	addw	s2,s2,a5
    8000563c:	fc1ff06f          	j	800055fc <_ZN9BufferCPP6getCntEv+0x44>

0000000080005640 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005640:	fe010113          	addi	sp,sp,-32
    80005644:	00113c23          	sd	ra,24(sp)
    80005648:	00813823          	sd	s0,16(sp)
    8000564c:	00913423          	sd	s1,8(sp)
    80005650:	02010413          	addi	s0,sp,32
    80005654:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005658:	00a00513          	li	a0,10
    8000565c:	fffff097          	auipc	ra,0xfffff
    80005660:	83c080e7          	jalr	-1988(ra) # 80003e98 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005664:	00004517          	auipc	a0,0x4
    80005668:	d5450513          	addi	a0,a0,-684 # 800093b8 <CONSOLE_STATUS+0x3a8>
    8000566c:	00000097          	auipc	ra,0x0
    80005670:	a30080e7          	jalr	-1488(ra) # 8000509c <_Z11printStringPKc>
    while (getCnt()) {
    80005674:	00048513          	mv	a0,s1
    80005678:	00000097          	auipc	ra,0x0
    8000567c:	f40080e7          	jalr	-192(ra) # 800055b8 <_ZN9BufferCPP6getCntEv>
    80005680:	02050c63          	beqz	a0,800056b8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005684:	0084b783          	ld	a5,8(s1)
    80005688:	0104a703          	lw	a4,16(s1)
    8000568c:	00271713          	slli	a4,a4,0x2
    80005690:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005694:	0007c503          	lbu	a0,0(a5)
    80005698:	fffff097          	auipc	ra,0xfffff
    8000569c:	800080e7          	jalr	-2048(ra) # 80003e98 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800056a0:	0104a783          	lw	a5,16(s1)
    800056a4:	0017879b          	addiw	a5,a5,1
    800056a8:	0004a703          	lw	a4,0(s1)
    800056ac:	02e7e7bb          	remw	a5,a5,a4
    800056b0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800056b4:	fc1ff06f          	j	80005674 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800056b8:	02100513          	li	a0,33
    800056bc:	ffffe097          	auipc	ra,0xffffe
    800056c0:	7dc080e7          	jalr	2012(ra) # 80003e98 <_ZN7Console4putcEc>
    Console::putc('\n');
    800056c4:	00a00513          	li	a0,10
    800056c8:	ffffe097          	auipc	ra,0xffffe
    800056cc:	7d0080e7          	jalr	2000(ra) # 80003e98 <_ZN7Console4putcEc>
    mem_free(buffer);
    800056d0:	0084b503          	ld	a0,8(s1)
    800056d4:	ffffd097          	auipc	ra,0xffffd
    800056d8:	a48080e7          	jalr	-1464(ra) # 8000211c <_Z8mem_freePv>
    delete itemAvailable;
    800056dc:	0204b503          	ld	a0,32(s1)
    800056e0:	00050863          	beqz	a0,800056f0 <_ZN9BufferCPPD1Ev+0xb0>
    800056e4:	00053783          	ld	a5,0(a0)
    800056e8:	0087b783          	ld	a5,8(a5)
    800056ec:	000780e7          	jalr	a5
    delete spaceAvailable;
    800056f0:	0184b503          	ld	a0,24(s1)
    800056f4:	00050863          	beqz	a0,80005704 <_ZN9BufferCPPD1Ev+0xc4>
    800056f8:	00053783          	ld	a5,0(a0)
    800056fc:	0087b783          	ld	a5,8(a5)
    80005700:	000780e7          	jalr	a5
    delete mutexTail;
    80005704:	0304b503          	ld	a0,48(s1)
    80005708:	00050863          	beqz	a0,80005718 <_ZN9BufferCPPD1Ev+0xd8>
    8000570c:	00053783          	ld	a5,0(a0)
    80005710:	0087b783          	ld	a5,8(a5)
    80005714:	000780e7          	jalr	a5
    delete mutexHead;
    80005718:	0284b503          	ld	a0,40(s1)
    8000571c:	00050863          	beqz	a0,8000572c <_ZN9BufferCPPD1Ev+0xec>
    80005720:	00053783          	ld	a5,0(a0)
    80005724:	0087b783          	ld	a5,8(a5)
    80005728:	000780e7          	jalr	a5
}
    8000572c:	01813083          	ld	ra,24(sp)
    80005730:	01013403          	ld	s0,16(sp)
    80005734:	00813483          	ld	s1,8(sp)
    80005738:	02010113          	addi	sp,sp,32
    8000573c:	00008067          	ret

0000000080005740 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80005740:	fe010113          	addi	sp,sp,-32
    80005744:	00113c23          	sd	ra,24(sp)
    80005748:	00813823          	sd	s0,16(sp)
    8000574c:	00913423          	sd	s1,8(sp)
    80005750:	01213023          	sd	s2,0(sp)
    80005754:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005758:	00000913          	li	s2,0
    8000575c:	0380006f          	j	80005794 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005760:	ffffd097          	auipc	ra,0xffffd
    80005764:	a68080e7          	jalr	-1432(ra) # 800021c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005768:	00148493          	addi	s1,s1,1
    8000576c:	000027b7          	lui	a5,0x2
    80005770:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005774:	0097ee63          	bltu	a5,s1,80005790 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005778:	00000713          	li	a4,0
    8000577c:	000077b7          	lui	a5,0x7
    80005780:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005784:	fce7eee3          	bltu	a5,a4,80005760 <_Z11workerBodyAPv+0x20>
    80005788:	00170713          	addi	a4,a4,1
    8000578c:	ff1ff06f          	j	8000577c <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005790:	00190913          	addi	s2,s2,1
    80005794:	00900793          	li	a5,9
    80005798:	0527e063          	bltu	a5,s2,800057d8 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000579c:	00004517          	auipc	a0,0x4
    800057a0:	c3450513          	addi	a0,a0,-972 # 800093d0 <CONSOLE_STATUS+0x3c0>
    800057a4:	00000097          	auipc	ra,0x0
    800057a8:	8f8080e7          	jalr	-1800(ra) # 8000509c <_Z11printStringPKc>
    800057ac:	00000613          	li	a2,0
    800057b0:	00a00593          	li	a1,10
    800057b4:	0009051b          	sext.w	a0,s2
    800057b8:	00000097          	auipc	ra,0x0
    800057bc:	a7c080e7          	jalr	-1412(ra) # 80005234 <_Z8printIntiii>
    800057c0:	00004517          	auipc	a0,0x4
    800057c4:	e1850513          	addi	a0,a0,-488 # 800095d8 <CONSOLE_STATUS+0x5c8>
    800057c8:	00000097          	auipc	ra,0x0
    800057cc:	8d4080e7          	jalr	-1836(ra) # 8000509c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800057d0:	00000493          	li	s1,0
    800057d4:	f99ff06f          	j	8000576c <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800057d8:	00004517          	auipc	a0,0x4
    800057dc:	c0050513          	addi	a0,a0,-1024 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800057e0:	00000097          	auipc	ra,0x0
    800057e4:	8bc080e7          	jalr	-1860(ra) # 8000509c <_Z11printStringPKc>
    finishedA = true;
    800057e8:	00100793          	li	a5,1
    800057ec:	0000a717          	auipc	a4,0xa
    800057f0:	1ef70623          	sb	a5,492(a4) # 8000f9d8 <finishedA>
}
    800057f4:	01813083          	ld	ra,24(sp)
    800057f8:	01013403          	ld	s0,16(sp)
    800057fc:	00813483          	ld	s1,8(sp)
    80005800:	00013903          	ld	s2,0(sp)
    80005804:	02010113          	addi	sp,sp,32
    80005808:	00008067          	ret

000000008000580c <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    8000580c:	fe010113          	addi	sp,sp,-32
    80005810:	00113c23          	sd	ra,24(sp)
    80005814:	00813823          	sd	s0,16(sp)
    80005818:	00913423          	sd	s1,8(sp)
    8000581c:	01213023          	sd	s2,0(sp)
    80005820:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005824:	00000913          	li	s2,0
    80005828:	0380006f          	j	80005860 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000582c:	ffffd097          	auipc	ra,0xffffd
    80005830:	99c080e7          	jalr	-1636(ra) # 800021c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005834:	00148493          	addi	s1,s1,1
    80005838:	000027b7          	lui	a5,0x2
    8000583c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005840:	0097ee63          	bltu	a5,s1,8000585c <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005844:	00000713          	li	a4,0
    80005848:	000077b7          	lui	a5,0x7
    8000584c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005850:	fce7eee3          	bltu	a5,a4,8000582c <_Z11workerBodyBPv+0x20>
    80005854:	00170713          	addi	a4,a4,1
    80005858:	ff1ff06f          	j	80005848 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000585c:	00190913          	addi	s2,s2,1
    80005860:	00f00793          	li	a5,15
    80005864:	0527e063          	bltu	a5,s2,800058a4 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005868:	00004517          	auipc	a0,0x4
    8000586c:	b8050513          	addi	a0,a0,-1152 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80005870:	00000097          	auipc	ra,0x0
    80005874:	82c080e7          	jalr	-2004(ra) # 8000509c <_Z11printStringPKc>
    80005878:	00000613          	li	a2,0
    8000587c:	00a00593          	li	a1,10
    80005880:	0009051b          	sext.w	a0,s2
    80005884:	00000097          	auipc	ra,0x0
    80005888:	9b0080e7          	jalr	-1616(ra) # 80005234 <_Z8printIntiii>
    8000588c:	00004517          	auipc	a0,0x4
    80005890:	d4c50513          	addi	a0,a0,-692 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005894:	00000097          	auipc	ra,0x0
    80005898:	808080e7          	jalr	-2040(ra) # 8000509c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000589c:	00000493          	li	s1,0
    800058a0:	f99ff06f          	j	80005838 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    800058a4:	ffffd097          	auipc	ra,0xffffd
    800058a8:	924080e7          	jalr	-1756(ra) # 800021c8 <_Z15thread_dispatchv>
    printString("B finished!\n");
    800058ac:	00004517          	auipc	a0,0x4
    800058b0:	b4450513          	addi	a0,a0,-1212 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800058b4:	fffff097          	auipc	ra,0xfffff
    800058b8:	7e8080e7          	jalr	2024(ra) # 8000509c <_Z11printStringPKc>
    finishedB = true;
    800058bc:	00100793          	li	a5,1
    800058c0:	0000a717          	auipc	a4,0xa
    800058c4:	10f70ca3          	sb	a5,281(a4) # 8000f9d9 <finishedB>
}
    800058c8:	01813083          	ld	ra,24(sp)
    800058cc:	01013403          	ld	s0,16(sp)
    800058d0:	00813483          	ld	s1,8(sp)
    800058d4:	00013903          	ld	s2,0(sp)
    800058d8:	02010113          	addi	sp,sp,32
    800058dc:	00008067          	ret

00000000800058e0 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    800058e0:	fe010113          	addi	sp,sp,-32
    800058e4:	00113c23          	sd	ra,24(sp)
    800058e8:	00813823          	sd	s0,16(sp)
    800058ec:	00913423          	sd	s1,8(sp)
    800058f0:	01213023          	sd	s2,0(sp)
    800058f4:	02010413          	addi	s0,sp,32
    800058f8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800058fc:	00100793          	li	a5,1
    80005900:	02a7f863          	bgeu	a5,a0,80005930 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005904:	00a00793          	li	a5,10
    80005908:	02f577b3          	remu	a5,a0,a5
    8000590c:	02078e63          	beqz	a5,80005948 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005910:	fff48513          	addi	a0,s1,-1
    80005914:	00000097          	auipc	ra,0x0
    80005918:	fcc080e7          	jalr	-52(ra) # 800058e0 <_Z9fibonaccim>
    8000591c:	00050913          	mv	s2,a0
    80005920:	ffe48513          	addi	a0,s1,-2
    80005924:	00000097          	auipc	ra,0x0
    80005928:	fbc080e7          	jalr	-68(ra) # 800058e0 <_Z9fibonaccim>
    8000592c:	00a90533          	add	a0,s2,a0
}
    80005930:	01813083          	ld	ra,24(sp)
    80005934:	01013403          	ld	s0,16(sp)
    80005938:	00813483          	ld	s1,8(sp)
    8000593c:	00013903          	ld	s2,0(sp)
    80005940:	02010113          	addi	sp,sp,32
    80005944:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005948:	ffffd097          	auipc	ra,0xffffd
    8000594c:	880080e7          	jalr	-1920(ra) # 800021c8 <_Z15thread_dispatchv>
    80005950:	fc1ff06f          	j	80005910 <_Z9fibonaccim+0x30>

0000000080005954 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80005954:	fe010113          	addi	sp,sp,-32
    80005958:	00113c23          	sd	ra,24(sp)
    8000595c:	00813823          	sd	s0,16(sp)
    80005960:	00913423          	sd	s1,8(sp)
    80005964:	01213023          	sd	s2,0(sp)
    80005968:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000596c:	00000493          	li	s1,0
    80005970:	0400006f          	j	800059b0 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005974:	00004517          	auipc	a0,0x4
    80005978:	a8c50513          	addi	a0,a0,-1396 # 80009400 <CONSOLE_STATUS+0x3f0>
    8000597c:	fffff097          	auipc	ra,0xfffff
    80005980:	720080e7          	jalr	1824(ra) # 8000509c <_Z11printStringPKc>
    80005984:	00000613          	li	a2,0
    80005988:	00a00593          	li	a1,10
    8000598c:	00048513          	mv	a0,s1
    80005990:	00000097          	auipc	ra,0x0
    80005994:	8a4080e7          	jalr	-1884(ra) # 80005234 <_Z8printIntiii>
    80005998:	00004517          	auipc	a0,0x4
    8000599c:	c4050513          	addi	a0,a0,-960 # 800095d8 <CONSOLE_STATUS+0x5c8>
    800059a0:	fffff097          	auipc	ra,0xfffff
    800059a4:	6fc080e7          	jalr	1788(ra) # 8000509c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800059a8:	0014849b          	addiw	s1,s1,1
    800059ac:	0ff4f493          	andi	s1,s1,255
    800059b0:	00200793          	li	a5,2
    800059b4:	fc97f0e3          	bgeu	a5,s1,80005974 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800059b8:	00004517          	auipc	a0,0x4
    800059bc:	a5050513          	addi	a0,a0,-1456 # 80009408 <CONSOLE_STATUS+0x3f8>
    800059c0:	fffff097          	auipc	ra,0xfffff
    800059c4:	6dc080e7          	jalr	1756(ra) # 8000509c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800059c8:	00700313          	li	t1,7
    thread_dispatch();
    800059cc:	ffffc097          	auipc	ra,0xffffc
    800059d0:	7fc080e7          	jalr	2044(ra) # 800021c8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800059d4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800059d8:	00004517          	auipc	a0,0x4
    800059dc:	a4050513          	addi	a0,a0,-1472 # 80009418 <CONSOLE_STATUS+0x408>
    800059e0:	fffff097          	auipc	ra,0xfffff
    800059e4:	6bc080e7          	jalr	1724(ra) # 8000509c <_Z11printStringPKc>
    800059e8:	00000613          	li	a2,0
    800059ec:	00a00593          	li	a1,10
    800059f0:	0009051b          	sext.w	a0,s2
    800059f4:	00000097          	auipc	ra,0x0
    800059f8:	840080e7          	jalr	-1984(ra) # 80005234 <_Z8printIntiii>
    800059fc:	00004517          	auipc	a0,0x4
    80005a00:	bdc50513          	addi	a0,a0,-1060 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005a04:	fffff097          	auipc	ra,0xfffff
    80005a08:	698080e7          	jalr	1688(ra) # 8000509c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80005a0c:	00c00513          	li	a0,12
    80005a10:	00000097          	auipc	ra,0x0
    80005a14:	ed0080e7          	jalr	-304(ra) # 800058e0 <_Z9fibonaccim>
    80005a18:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005a1c:	00004517          	auipc	a0,0x4
    80005a20:	a0450513          	addi	a0,a0,-1532 # 80009420 <CONSOLE_STATUS+0x410>
    80005a24:	fffff097          	auipc	ra,0xfffff
    80005a28:	678080e7          	jalr	1656(ra) # 8000509c <_Z11printStringPKc>
    80005a2c:	00000613          	li	a2,0
    80005a30:	00a00593          	li	a1,10
    80005a34:	0009051b          	sext.w	a0,s2
    80005a38:	fffff097          	auipc	ra,0xfffff
    80005a3c:	7fc080e7          	jalr	2044(ra) # 80005234 <_Z8printIntiii>
    80005a40:	00004517          	auipc	a0,0x4
    80005a44:	b9850513          	addi	a0,a0,-1128 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005a48:	fffff097          	auipc	ra,0xfffff
    80005a4c:	654080e7          	jalr	1620(ra) # 8000509c <_Z11printStringPKc>
    80005a50:	0400006f          	j	80005a90 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005a54:	00004517          	auipc	a0,0x4
    80005a58:	9ac50513          	addi	a0,a0,-1620 # 80009400 <CONSOLE_STATUS+0x3f0>
    80005a5c:	fffff097          	auipc	ra,0xfffff
    80005a60:	640080e7          	jalr	1600(ra) # 8000509c <_Z11printStringPKc>
    80005a64:	00000613          	li	a2,0
    80005a68:	00a00593          	li	a1,10
    80005a6c:	00048513          	mv	a0,s1
    80005a70:	fffff097          	auipc	ra,0xfffff
    80005a74:	7c4080e7          	jalr	1988(ra) # 80005234 <_Z8printIntiii>
    80005a78:	00004517          	auipc	a0,0x4
    80005a7c:	b6050513          	addi	a0,a0,-1184 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005a80:	fffff097          	auipc	ra,0xfffff
    80005a84:	61c080e7          	jalr	1564(ra) # 8000509c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005a88:	0014849b          	addiw	s1,s1,1
    80005a8c:	0ff4f493          	andi	s1,s1,255
    80005a90:	00500793          	li	a5,5
    80005a94:	fc97f0e3          	bgeu	a5,s1,80005a54 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    80005a98:	ffffc097          	auipc	ra,0xffffc
    80005a9c:	730080e7          	jalr	1840(ra) # 800021c8 <_Z15thread_dispatchv>
    printString("A finished!\n");
    80005aa0:	00004517          	auipc	a0,0x4
    80005aa4:	93850513          	addi	a0,a0,-1736 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80005aa8:	fffff097          	auipc	ra,0xfffff
    80005aac:	5f4080e7          	jalr	1524(ra) # 8000509c <_Z11printStringPKc>
    finishedC = true;
    80005ab0:	00100793          	li	a5,1
    80005ab4:	0000a717          	auipc	a4,0xa
    80005ab8:	f2f70323          	sb	a5,-218(a4) # 8000f9da <finishedC>
}
    80005abc:	01813083          	ld	ra,24(sp)
    80005ac0:	01013403          	ld	s0,16(sp)
    80005ac4:	00813483          	ld	s1,8(sp)
    80005ac8:	00013903          	ld	s2,0(sp)
    80005acc:	02010113          	addi	sp,sp,32
    80005ad0:	00008067          	ret

0000000080005ad4 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005ad4:	fe010113          	addi	sp,sp,-32
    80005ad8:	00113c23          	sd	ra,24(sp)
    80005adc:	00813823          	sd	s0,16(sp)
    80005ae0:	00913423          	sd	s1,8(sp)
    80005ae4:	01213023          	sd	s2,0(sp)
    80005ae8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005aec:	00a00493          	li	s1,10
    80005af0:	0400006f          	j	80005b30 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005af4:	00004517          	auipc	a0,0x4
    80005af8:	93c50513          	addi	a0,a0,-1732 # 80009430 <CONSOLE_STATUS+0x420>
    80005afc:	fffff097          	auipc	ra,0xfffff
    80005b00:	5a0080e7          	jalr	1440(ra) # 8000509c <_Z11printStringPKc>
    80005b04:	00000613          	li	a2,0
    80005b08:	00a00593          	li	a1,10
    80005b0c:	00048513          	mv	a0,s1
    80005b10:	fffff097          	auipc	ra,0xfffff
    80005b14:	724080e7          	jalr	1828(ra) # 80005234 <_Z8printIntiii>
    80005b18:	00004517          	auipc	a0,0x4
    80005b1c:	ac050513          	addi	a0,a0,-1344 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005b20:	fffff097          	auipc	ra,0xfffff
    80005b24:	57c080e7          	jalr	1404(ra) # 8000509c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005b28:	0014849b          	addiw	s1,s1,1
    80005b2c:	0ff4f493          	andi	s1,s1,255
    80005b30:	00c00793          	li	a5,12
    80005b34:	fc97f0e3          	bgeu	a5,s1,80005af4 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005b38:	00004517          	auipc	a0,0x4
    80005b3c:	90050513          	addi	a0,a0,-1792 # 80009438 <CONSOLE_STATUS+0x428>
    80005b40:	fffff097          	auipc	ra,0xfffff
    80005b44:	55c080e7          	jalr	1372(ra) # 8000509c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005b48:	00500313          	li	t1,5
    thread_dispatch();
    80005b4c:	ffffc097          	auipc	ra,0xffffc
    80005b50:	67c080e7          	jalr	1660(ra) # 800021c8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005b54:	01000513          	li	a0,16
    80005b58:	00000097          	auipc	ra,0x0
    80005b5c:	d88080e7          	jalr	-632(ra) # 800058e0 <_Z9fibonaccim>
    80005b60:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005b64:	00004517          	auipc	a0,0x4
    80005b68:	8e450513          	addi	a0,a0,-1820 # 80009448 <CONSOLE_STATUS+0x438>
    80005b6c:	fffff097          	auipc	ra,0xfffff
    80005b70:	530080e7          	jalr	1328(ra) # 8000509c <_Z11printStringPKc>
    80005b74:	00000613          	li	a2,0
    80005b78:	00a00593          	li	a1,10
    80005b7c:	0009051b          	sext.w	a0,s2
    80005b80:	fffff097          	auipc	ra,0xfffff
    80005b84:	6b4080e7          	jalr	1716(ra) # 80005234 <_Z8printIntiii>
    80005b88:	00004517          	auipc	a0,0x4
    80005b8c:	a5050513          	addi	a0,a0,-1456 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005b90:	fffff097          	auipc	ra,0xfffff
    80005b94:	50c080e7          	jalr	1292(ra) # 8000509c <_Z11printStringPKc>
    80005b98:	0400006f          	j	80005bd8 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005b9c:	00004517          	auipc	a0,0x4
    80005ba0:	89450513          	addi	a0,a0,-1900 # 80009430 <CONSOLE_STATUS+0x420>
    80005ba4:	fffff097          	auipc	ra,0xfffff
    80005ba8:	4f8080e7          	jalr	1272(ra) # 8000509c <_Z11printStringPKc>
    80005bac:	00000613          	li	a2,0
    80005bb0:	00a00593          	li	a1,10
    80005bb4:	00048513          	mv	a0,s1
    80005bb8:	fffff097          	auipc	ra,0xfffff
    80005bbc:	67c080e7          	jalr	1660(ra) # 80005234 <_Z8printIntiii>
    80005bc0:	00004517          	auipc	a0,0x4
    80005bc4:	a1850513          	addi	a0,a0,-1512 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005bc8:	fffff097          	auipc	ra,0xfffff
    80005bcc:	4d4080e7          	jalr	1236(ra) # 8000509c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005bd0:	0014849b          	addiw	s1,s1,1
    80005bd4:	0ff4f493          	andi	s1,s1,255
    80005bd8:	00f00793          	li	a5,15
    80005bdc:	fc97f0e3          	bgeu	a5,s1,80005b9c <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    80005be0:	ffffc097          	auipc	ra,0xffffc
    80005be4:	5e8080e7          	jalr	1512(ra) # 800021c8 <_Z15thread_dispatchv>
    printString("D finished!\n");
    80005be8:	00004517          	auipc	a0,0x4
    80005bec:	87050513          	addi	a0,a0,-1936 # 80009458 <CONSOLE_STATUS+0x448>
    80005bf0:	fffff097          	auipc	ra,0xfffff
    80005bf4:	4ac080e7          	jalr	1196(ra) # 8000509c <_Z11printStringPKc>
    finishedD = true;
    80005bf8:	00100793          	li	a5,1
    80005bfc:	0000a717          	auipc	a4,0xa
    80005c00:	dcf70fa3          	sb	a5,-545(a4) # 8000f9db <finishedD>
}
    80005c04:	01813083          	ld	ra,24(sp)
    80005c08:	01013403          	ld	s0,16(sp)
    80005c0c:	00813483          	ld	s1,8(sp)
    80005c10:	00013903          	ld	s2,0(sp)
    80005c14:	02010113          	addi	sp,sp,32
    80005c18:	00008067          	ret

0000000080005c1c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005c1c:	fc010113          	addi	sp,sp,-64
    80005c20:	02113c23          	sd	ra,56(sp)
    80005c24:	02813823          	sd	s0,48(sp)
    80005c28:	02913423          	sd	s1,40(sp)
    80005c2c:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005c30:	00000613          	li	a2,0
    80005c34:	00000597          	auipc	a1,0x0
    80005c38:	b0c58593          	addi	a1,a1,-1268 # 80005740 <_Z11workerBodyAPv>
    80005c3c:	fc040513          	addi	a0,s0,-64
    80005c40:	ffffc097          	auipc	ra,0xffffc
    80005c44:	508080e7          	jalr	1288(ra) # 80002148 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80005c48:	00004517          	auipc	a0,0x4
    80005c4c:	82050513          	addi	a0,a0,-2016 # 80009468 <CONSOLE_STATUS+0x458>
    80005c50:	fffff097          	auipc	ra,0xfffff
    80005c54:	44c080e7          	jalr	1100(ra) # 8000509c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005c58:	00000613          	li	a2,0
    80005c5c:	00000597          	auipc	a1,0x0
    80005c60:	bb058593          	addi	a1,a1,-1104 # 8000580c <_Z11workerBodyBPv>
    80005c64:	fc840513          	addi	a0,s0,-56
    80005c68:	ffffc097          	auipc	ra,0xffffc
    80005c6c:	4e0080e7          	jalr	1248(ra) # 80002148 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005c70:	00004517          	auipc	a0,0x4
    80005c74:	81050513          	addi	a0,a0,-2032 # 80009480 <CONSOLE_STATUS+0x470>
    80005c78:	fffff097          	auipc	ra,0xfffff
    80005c7c:	424080e7          	jalr	1060(ra) # 8000509c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005c80:	00000613          	li	a2,0
    80005c84:	00000597          	auipc	a1,0x0
    80005c88:	cd058593          	addi	a1,a1,-816 # 80005954 <_Z11workerBodyCPv>
    80005c8c:	fd040513          	addi	a0,s0,-48
    80005c90:	ffffc097          	auipc	ra,0xffffc
    80005c94:	4b8080e7          	jalr	1208(ra) # 80002148 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005c98:	00004517          	auipc	a0,0x4
    80005c9c:	80050513          	addi	a0,a0,-2048 # 80009498 <CONSOLE_STATUS+0x488>
    80005ca0:	fffff097          	auipc	ra,0xfffff
    80005ca4:	3fc080e7          	jalr	1020(ra) # 8000509c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005ca8:	00000613          	li	a2,0
    80005cac:	00000597          	auipc	a1,0x0
    80005cb0:	e2858593          	addi	a1,a1,-472 # 80005ad4 <_Z11workerBodyDPv>
    80005cb4:	fd840513          	addi	a0,s0,-40
    80005cb8:	ffffc097          	auipc	ra,0xffffc
    80005cbc:	490080e7          	jalr	1168(ra) # 80002148 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005cc0:	00003517          	auipc	a0,0x3
    80005cc4:	7f050513          	addi	a0,a0,2032 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005cc8:	fffff097          	auipc	ra,0xfffff
    80005ccc:	3d4080e7          	jalr	980(ra) # 8000509c <_Z11printStringPKc>
    80005cd0:	00c0006f          	j	80005cdc <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005cd4:	ffffc097          	auipc	ra,0xffffc
    80005cd8:	4f4080e7          	jalr	1268(ra) # 800021c8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005cdc:	0000a797          	auipc	a5,0xa
    80005ce0:	cfc7c783          	lbu	a5,-772(a5) # 8000f9d8 <finishedA>
    80005ce4:	fe0788e3          	beqz	a5,80005cd4 <_Z18Threads_C_API_testv+0xb8>
    80005ce8:	0000a797          	auipc	a5,0xa
    80005cec:	cf17c783          	lbu	a5,-783(a5) # 8000f9d9 <finishedB>
    80005cf0:	fe0782e3          	beqz	a5,80005cd4 <_Z18Threads_C_API_testv+0xb8>
    80005cf4:	0000a797          	auipc	a5,0xa
    80005cf8:	ce67c783          	lbu	a5,-794(a5) # 8000f9da <finishedC>
    80005cfc:	fc078ce3          	beqz	a5,80005cd4 <_Z18Threads_C_API_testv+0xb8>
    80005d00:	0000a797          	auipc	a5,0xa
    80005d04:	cdb7c783          	lbu	a5,-805(a5) # 8000f9db <finishedD>
    80005d08:	fc0786e3          	beqz	a5,80005cd4 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    80005d0c:	fc040493          	addi	s1,s0,-64
    80005d10:	0080006f          	j	80005d18 <_Z18Threads_C_API_testv+0xfc>
    80005d14:	00848493          	addi	s1,s1,8
    80005d18:	fe040793          	addi	a5,s0,-32
    80005d1c:	00f48c63          	beq	s1,a5,80005d34 <_Z18Threads_C_API_testv+0x118>
    80005d20:	0004b503          	ld	a0,0(s1)
    80005d24:	fe0508e3          	beqz	a0,80005d14 <_Z18Threads_C_API_testv+0xf8>
    80005d28:	ffffc097          	auipc	ra,0xffffc
    80005d2c:	71c080e7          	jalr	1820(ra) # 80002444 <_ZN7_threaddlEPv>
    80005d30:	fe5ff06f          	j	80005d14 <_Z18Threads_C_API_testv+0xf8>
}
    80005d34:	03813083          	ld	ra,56(sp)
    80005d38:	03013403          	ld	s0,48(sp)
    80005d3c:	02813483          	ld	s1,40(sp)
    80005d40:	04010113          	addi	sp,sp,64
    80005d44:	00008067          	ret

0000000080005d48 <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    80005d48:	ff010113          	addi	sp,sp,-16
    80005d4c:	00113423          	sd	ra,8(sp)
    80005d50:	00813023          	sd	s0,0(sp)
    80005d54:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80005d58:	00000097          	auipc	ra,0x0
    80005d5c:	ec4080e7          	jalr	-316(ra) # 80005c1c <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80005d60:	00813083          	ld	ra,8(sp)
    80005d64:	00013403          	ld	s0,0(sp)
    80005d68:	01010113          	addi	sp,sp,16
    80005d6c:	00008067          	ret

0000000080005d70 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005d70:	fe010113          	addi	sp,sp,-32
    80005d74:	00113c23          	sd	ra,24(sp)
    80005d78:	00813823          	sd	s0,16(sp)
    80005d7c:	00913423          	sd	s1,8(sp)
    80005d80:	01213023          	sd	s2,0(sp)
    80005d84:	02010413          	addi	s0,sp,32
    80005d88:	00050493          	mv	s1,a0
    80005d8c:	00058913          	mv	s2,a1
    80005d90:	0015879b          	addiw	a5,a1,1
    80005d94:	0007851b          	sext.w	a0,a5
    80005d98:	00f4a023          	sw	a5,0(s1)
    80005d9c:	0004a823          	sw	zero,16(s1)
    80005da0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005da4:	00251513          	slli	a0,a0,0x2
    80005da8:	ffffc097          	auipc	ra,0xffffc
    80005dac:	344080e7          	jalr	836(ra) # 800020ec <_Z9mem_allocm>
    80005db0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005db4:	00000593          	li	a1,0
    80005db8:	02048513          	addi	a0,s1,32
    80005dbc:	ffffc097          	auipc	ra,0xffffc
    80005dc0:	454080e7          	jalr	1108(ra) # 80002210 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005dc4:	00090593          	mv	a1,s2
    80005dc8:	01848513          	addi	a0,s1,24
    80005dcc:	ffffc097          	auipc	ra,0xffffc
    80005dd0:	444080e7          	jalr	1092(ra) # 80002210 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005dd4:	00100593          	li	a1,1
    80005dd8:	02848513          	addi	a0,s1,40
    80005ddc:	ffffc097          	auipc	ra,0xffffc
    80005de0:	434080e7          	jalr	1076(ra) # 80002210 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005de4:	00100593          	li	a1,1
    80005de8:	03048513          	addi	a0,s1,48
    80005dec:	ffffc097          	auipc	ra,0xffffc
    80005df0:	424080e7          	jalr	1060(ra) # 80002210 <_Z8sem_openPP4_semj>
}
    80005df4:	01813083          	ld	ra,24(sp)
    80005df8:	01013403          	ld	s0,16(sp)
    80005dfc:	00813483          	ld	s1,8(sp)
    80005e00:	00013903          	ld	s2,0(sp)
    80005e04:	02010113          	addi	sp,sp,32
    80005e08:	00008067          	ret

0000000080005e0c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005e0c:	fe010113          	addi	sp,sp,-32
    80005e10:	00113c23          	sd	ra,24(sp)
    80005e14:	00813823          	sd	s0,16(sp)
    80005e18:	00913423          	sd	s1,8(sp)
    80005e1c:	01213023          	sd	s2,0(sp)
    80005e20:	02010413          	addi	s0,sp,32
    80005e24:	00050493          	mv	s1,a0
    80005e28:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005e2c:	01853503          	ld	a0,24(a0)
    80005e30:	ffffc097          	auipc	ra,0xffffc
    80005e34:	444080e7          	jalr	1092(ra) # 80002274 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005e38:	0304b503          	ld	a0,48(s1)
    80005e3c:	ffffc097          	auipc	ra,0xffffc
    80005e40:	438080e7          	jalr	1080(ra) # 80002274 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005e44:	0084b783          	ld	a5,8(s1)
    80005e48:	0144a703          	lw	a4,20(s1)
    80005e4c:	00271713          	slli	a4,a4,0x2
    80005e50:	00e787b3          	add	a5,a5,a4
    80005e54:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005e58:	0144a783          	lw	a5,20(s1)
    80005e5c:	0017879b          	addiw	a5,a5,1
    80005e60:	0004a703          	lw	a4,0(s1)
    80005e64:	02e7e7bb          	remw	a5,a5,a4
    80005e68:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005e6c:	0304b503          	ld	a0,48(s1)
    80005e70:	ffffc097          	auipc	ra,0xffffc
    80005e74:	430080e7          	jalr	1072(ra) # 800022a0 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80005e78:	0204b503          	ld	a0,32(s1)
    80005e7c:	ffffc097          	auipc	ra,0xffffc
    80005e80:	424080e7          	jalr	1060(ra) # 800022a0 <_Z10sem_signalP4_sem>

}
    80005e84:	01813083          	ld	ra,24(sp)
    80005e88:	01013403          	ld	s0,16(sp)
    80005e8c:	00813483          	ld	s1,8(sp)
    80005e90:	00013903          	ld	s2,0(sp)
    80005e94:	02010113          	addi	sp,sp,32
    80005e98:	00008067          	ret

0000000080005e9c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005e9c:	fe010113          	addi	sp,sp,-32
    80005ea0:	00113c23          	sd	ra,24(sp)
    80005ea4:	00813823          	sd	s0,16(sp)
    80005ea8:	00913423          	sd	s1,8(sp)
    80005eac:	01213023          	sd	s2,0(sp)
    80005eb0:	02010413          	addi	s0,sp,32
    80005eb4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005eb8:	02053503          	ld	a0,32(a0)
    80005ebc:	ffffc097          	auipc	ra,0xffffc
    80005ec0:	3b8080e7          	jalr	952(ra) # 80002274 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005ec4:	0284b503          	ld	a0,40(s1)
    80005ec8:	ffffc097          	auipc	ra,0xffffc
    80005ecc:	3ac080e7          	jalr	940(ra) # 80002274 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005ed0:	0084b703          	ld	a4,8(s1)
    80005ed4:	0104a783          	lw	a5,16(s1)
    80005ed8:	00279693          	slli	a3,a5,0x2
    80005edc:	00d70733          	add	a4,a4,a3
    80005ee0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005ee4:	0017879b          	addiw	a5,a5,1
    80005ee8:	0004a703          	lw	a4,0(s1)
    80005eec:	02e7e7bb          	remw	a5,a5,a4
    80005ef0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005ef4:	0284b503          	ld	a0,40(s1)
    80005ef8:	ffffc097          	auipc	ra,0xffffc
    80005efc:	3a8080e7          	jalr	936(ra) # 800022a0 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80005f00:	0184b503          	ld	a0,24(s1)
    80005f04:	ffffc097          	auipc	ra,0xffffc
    80005f08:	39c080e7          	jalr	924(ra) # 800022a0 <_Z10sem_signalP4_sem>

    return ret;
}
    80005f0c:	00090513          	mv	a0,s2
    80005f10:	01813083          	ld	ra,24(sp)
    80005f14:	01013403          	ld	s0,16(sp)
    80005f18:	00813483          	ld	s1,8(sp)
    80005f1c:	00013903          	ld	s2,0(sp)
    80005f20:	02010113          	addi	sp,sp,32
    80005f24:	00008067          	ret

0000000080005f28 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005f28:	fe010113          	addi	sp,sp,-32
    80005f2c:	00113c23          	sd	ra,24(sp)
    80005f30:	00813823          	sd	s0,16(sp)
    80005f34:	00913423          	sd	s1,8(sp)
    80005f38:	01213023          	sd	s2,0(sp)
    80005f3c:	02010413          	addi	s0,sp,32
    80005f40:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005f44:	02853503          	ld	a0,40(a0)
    80005f48:	ffffc097          	auipc	ra,0xffffc
    80005f4c:	32c080e7          	jalr	812(ra) # 80002274 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80005f50:	0304b503          	ld	a0,48(s1)
    80005f54:	ffffc097          	auipc	ra,0xffffc
    80005f58:	320080e7          	jalr	800(ra) # 80002274 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005f5c:	0144a783          	lw	a5,20(s1)
    80005f60:	0104a903          	lw	s2,16(s1)
    80005f64:	0327ce63          	blt	a5,s2,80005fa0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005f68:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005f6c:	0304b503          	ld	a0,48(s1)
    80005f70:	ffffc097          	auipc	ra,0xffffc
    80005f74:	330080e7          	jalr	816(ra) # 800022a0 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80005f78:	0284b503          	ld	a0,40(s1)
    80005f7c:	ffffc097          	auipc	ra,0xffffc
    80005f80:	324080e7          	jalr	804(ra) # 800022a0 <_Z10sem_signalP4_sem>

    return ret;
    80005f84:	00090513          	mv	a0,s2
    80005f88:	01813083          	ld	ra,24(sp)
    80005f8c:	01013403          	ld	s0,16(sp)
    80005f90:	00813483          	ld	s1,8(sp)
    80005f94:	00013903          	ld	s2,0(sp)
    80005f98:	02010113          	addi	sp,sp,32
    80005f9c:	00008067          	ret
        ret = cap - head + tail;
    80005fa0:	0004a703          	lw	a4,0(s1)
    80005fa4:	4127093b          	subw	s2,a4,s2
    80005fa8:	00f9093b          	addw	s2,s2,a5
    80005fac:	fc1ff06f          	j	80005f6c <_ZN6Buffer6getCntEv+0x44>

0000000080005fb0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005fb0:	fe010113          	addi	sp,sp,-32
    80005fb4:	00113c23          	sd	ra,24(sp)
    80005fb8:	00813823          	sd	s0,16(sp)
    80005fbc:	00913423          	sd	s1,8(sp)
    80005fc0:	02010413          	addi	s0,sp,32
    80005fc4:	00050493          	mv	s1,a0
    putc('\n');
    80005fc8:	00a00513          	li	a0,10
    80005fcc:	ffffc097          	auipc	ra,0xffffc
    80005fd0:	400080e7          	jalr	1024(ra) # 800023cc <_Z4putcc>
    printString("Buffer deleted!\n");
    80005fd4:	00003517          	auipc	a0,0x3
    80005fd8:	3e450513          	addi	a0,a0,996 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80005fdc:	fffff097          	auipc	ra,0xfffff
    80005fe0:	0c0080e7          	jalr	192(ra) # 8000509c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005fe4:	00048513          	mv	a0,s1
    80005fe8:	00000097          	auipc	ra,0x0
    80005fec:	f40080e7          	jalr	-192(ra) # 80005f28 <_ZN6Buffer6getCntEv>
    80005ff0:	02a05c63          	blez	a0,80006028 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005ff4:	0084b783          	ld	a5,8(s1)
    80005ff8:	0104a703          	lw	a4,16(s1)
    80005ffc:	00271713          	slli	a4,a4,0x2
    80006000:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006004:	0007c503          	lbu	a0,0(a5)
    80006008:	ffffc097          	auipc	ra,0xffffc
    8000600c:	3c4080e7          	jalr	964(ra) # 800023cc <_Z4putcc>
        head = (head + 1) % cap;
    80006010:	0104a783          	lw	a5,16(s1)
    80006014:	0017879b          	addiw	a5,a5,1
    80006018:	0004a703          	lw	a4,0(s1)
    8000601c:	02e7e7bb          	remw	a5,a5,a4
    80006020:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006024:	fc1ff06f          	j	80005fe4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006028:	02100513          	li	a0,33
    8000602c:	ffffc097          	auipc	ra,0xffffc
    80006030:	3a0080e7          	jalr	928(ra) # 800023cc <_Z4putcc>
    putc('\n');
    80006034:	00a00513          	li	a0,10
    80006038:	ffffc097          	auipc	ra,0xffffc
    8000603c:	394080e7          	jalr	916(ra) # 800023cc <_Z4putcc>
    mem_free(buffer);
    80006040:	0084b503          	ld	a0,8(s1)
    80006044:	ffffc097          	auipc	ra,0xffffc
    80006048:	0d8080e7          	jalr	216(ra) # 8000211c <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000604c:	0204b503          	ld	a0,32(s1)
    80006050:	ffffc097          	auipc	ra,0xffffc
    80006054:	1f8080e7          	jalr	504(ra) # 80002248 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006058:	0184b503          	ld	a0,24(s1)
    8000605c:	ffffc097          	auipc	ra,0xffffc
    80006060:	1ec080e7          	jalr	492(ra) # 80002248 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006064:	0304b503          	ld	a0,48(s1)
    80006068:	ffffc097          	auipc	ra,0xffffc
    8000606c:	1e0080e7          	jalr	480(ra) # 80002248 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006070:	0284b503          	ld	a0,40(s1)
    80006074:	ffffc097          	auipc	ra,0xffffc
    80006078:	1d4080e7          	jalr	468(ra) # 80002248 <_Z9sem_closeP4_sem>
}
    8000607c:	01813083          	ld	ra,24(sp)
    80006080:	01013403          	ld	s0,16(sp)
    80006084:	00813483          	ld	s1,8(sp)
    80006088:	02010113          	addi	sp,sp,32
    8000608c:	00008067          	ret

0000000080006090 <start>:
    80006090:	ff010113          	addi	sp,sp,-16
    80006094:	00813423          	sd	s0,8(sp)
    80006098:	01010413          	addi	s0,sp,16
    8000609c:	300027f3          	csrr	a5,mstatus
    800060a0:	ffffe737          	lui	a4,0xffffe
    800060a4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffedbbf>
    800060a8:	00e7f7b3          	and	a5,a5,a4
    800060ac:	00001737          	lui	a4,0x1
    800060b0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800060b4:	00e7e7b3          	or	a5,a5,a4
    800060b8:	30079073          	csrw	mstatus,a5
    800060bc:	00000797          	auipc	a5,0x0
    800060c0:	16078793          	addi	a5,a5,352 # 8000621c <system_main>
    800060c4:	34179073          	csrw	mepc,a5
    800060c8:	00000793          	li	a5,0
    800060cc:	18079073          	csrw	satp,a5
    800060d0:	000107b7          	lui	a5,0x10
    800060d4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800060d8:	30279073          	csrw	medeleg,a5
    800060dc:	30379073          	csrw	mideleg,a5
    800060e0:	104027f3          	csrr	a5,sie
    800060e4:	2227e793          	ori	a5,a5,546
    800060e8:	10479073          	csrw	sie,a5
    800060ec:	fff00793          	li	a5,-1
    800060f0:	00a7d793          	srli	a5,a5,0xa
    800060f4:	3b079073          	csrw	pmpaddr0,a5
    800060f8:	00f00793          	li	a5,15
    800060fc:	3a079073          	csrw	pmpcfg0,a5
    80006100:	f14027f3          	csrr	a5,mhartid
    80006104:	0200c737          	lui	a4,0x200c
    80006108:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000610c:	0007869b          	sext.w	a3,a5
    80006110:	00269713          	slli	a4,a3,0x2
    80006114:	000f4637          	lui	a2,0xf4
    80006118:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000611c:	00d70733          	add	a4,a4,a3
    80006120:	0037979b          	slliw	a5,a5,0x3
    80006124:	020046b7          	lui	a3,0x2004
    80006128:	00d787b3          	add	a5,a5,a3
    8000612c:	00c585b3          	add	a1,a1,a2
    80006130:	00371693          	slli	a3,a4,0x3
    80006134:	0000a717          	auipc	a4,0xa
    80006138:	8ac70713          	addi	a4,a4,-1876 # 8000f9e0 <timer_scratch>
    8000613c:	00b7b023          	sd	a1,0(a5)
    80006140:	00d70733          	add	a4,a4,a3
    80006144:	00f73c23          	sd	a5,24(a4)
    80006148:	02c73023          	sd	a2,32(a4)
    8000614c:	34071073          	csrw	mscratch,a4
    80006150:	00000797          	auipc	a5,0x0
    80006154:	6e078793          	addi	a5,a5,1760 # 80006830 <timervec>
    80006158:	30579073          	csrw	mtvec,a5
    8000615c:	300027f3          	csrr	a5,mstatus
    80006160:	0087e793          	ori	a5,a5,8
    80006164:	30079073          	csrw	mstatus,a5
    80006168:	304027f3          	csrr	a5,mie
    8000616c:	0807e793          	ori	a5,a5,128
    80006170:	30479073          	csrw	mie,a5
    80006174:	f14027f3          	csrr	a5,mhartid
    80006178:	0007879b          	sext.w	a5,a5
    8000617c:	00078213          	mv	tp,a5
    80006180:	30200073          	mret
    80006184:	00813403          	ld	s0,8(sp)
    80006188:	01010113          	addi	sp,sp,16
    8000618c:	00008067          	ret

0000000080006190 <timerinit>:
    80006190:	ff010113          	addi	sp,sp,-16
    80006194:	00813423          	sd	s0,8(sp)
    80006198:	01010413          	addi	s0,sp,16
    8000619c:	f14027f3          	csrr	a5,mhartid
    800061a0:	0200c737          	lui	a4,0x200c
    800061a4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800061a8:	0007869b          	sext.w	a3,a5
    800061ac:	00269713          	slli	a4,a3,0x2
    800061b0:	000f4637          	lui	a2,0xf4
    800061b4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800061b8:	00d70733          	add	a4,a4,a3
    800061bc:	0037979b          	slliw	a5,a5,0x3
    800061c0:	020046b7          	lui	a3,0x2004
    800061c4:	00d787b3          	add	a5,a5,a3
    800061c8:	00c585b3          	add	a1,a1,a2
    800061cc:	00371693          	slli	a3,a4,0x3
    800061d0:	0000a717          	auipc	a4,0xa
    800061d4:	81070713          	addi	a4,a4,-2032 # 8000f9e0 <timer_scratch>
    800061d8:	00b7b023          	sd	a1,0(a5)
    800061dc:	00d70733          	add	a4,a4,a3
    800061e0:	00f73c23          	sd	a5,24(a4)
    800061e4:	02c73023          	sd	a2,32(a4)
    800061e8:	34071073          	csrw	mscratch,a4
    800061ec:	00000797          	auipc	a5,0x0
    800061f0:	64478793          	addi	a5,a5,1604 # 80006830 <timervec>
    800061f4:	30579073          	csrw	mtvec,a5
    800061f8:	300027f3          	csrr	a5,mstatus
    800061fc:	0087e793          	ori	a5,a5,8
    80006200:	30079073          	csrw	mstatus,a5
    80006204:	304027f3          	csrr	a5,mie
    80006208:	0807e793          	ori	a5,a5,128
    8000620c:	30479073          	csrw	mie,a5
    80006210:	00813403          	ld	s0,8(sp)
    80006214:	01010113          	addi	sp,sp,16
    80006218:	00008067          	ret

000000008000621c <system_main>:
    8000621c:	fe010113          	addi	sp,sp,-32
    80006220:	00813823          	sd	s0,16(sp)
    80006224:	00913423          	sd	s1,8(sp)
    80006228:	00113c23          	sd	ra,24(sp)
    8000622c:	02010413          	addi	s0,sp,32
    80006230:	00000097          	auipc	ra,0x0
    80006234:	0c4080e7          	jalr	196(ra) # 800062f4 <cpuid>
    80006238:	00005497          	auipc	s1,0x5
    8000623c:	6a848493          	addi	s1,s1,1704 # 8000b8e0 <started>
    80006240:	02050263          	beqz	a0,80006264 <system_main+0x48>
    80006244:	0004a783          	lw	a5,0(s1)
    80006248:	0007879b          	sext.w	a5,a5
    8000624c:	fe078ce3          	beqz	a5,80006244 <system_main+0x28>
    80006250:	0ff0000f          	fence
    80006254:	00003517          	auipc	a0,0x3
    80006258:	2a450513          	addi	a0,a0,676 # 800094f8 <CONSOLE_STATUS+0x4e8>
    8000625c:	00001097          	auipc	ra,0x1
    80006260:	a70080e7          	jalr	-1424(ra) # 80006ccc <panic>
    80006264:	00001097          	auipc	ra,0x1
    80006268:	9c4080e7          	jalr	-1596(ra) # 80006c28 <consoleinit>
    8000626c:	00001097          	auipc	ra,0x1
    80006270:	150080e7          	jalr	336(ra) # 800073bc <printfinit>
    80006274:	00003517          	auipc	a0,0x3
    80006278:	36450513          	addi	a0,a0,868 # 800095d8 <CONSOLE_STATUS+0x5c8>
    8000627c:	00001097          	auipc	ra,0x1
    80006280:	aac080e7          	jalr	-1364(ra) # 80006d28 <__printf>
    80006284:	00003517          	auipc	a0,0x3
    80006288:	24450513          	addi	a0,a0,580 # 800094c8 <CONSOLE_STATUS+0x4b8>
    8000628c:	00001097          	auipc	ra,0x1
    80006290:	a9c080e7          	jalr	-1380(ra) # 80006d28 <__printf>
    80006294:	00003517          	auipc	a0,0x3
    80006298:	34450513          	addi	a0,a0,836 # 800095d8 <CONSOLE_STATUS+0x5c8>
    8000629c:	00001097          	auipc	ra,0x1
    800062a0:	a8c080e7          	jalr	-1396(ra) # 80006d28 <__printf>
    800062a4:	00001097          	auipc	ra,0x1
    800062a8:	4a4080e7          	jalr	1188(ra) # 80007748 <kinit>
    800062ac:	00000097          	auipc	ra,0x0
    800062b0:	148080e7          	jalr	328(ra) # 800063f4 <trapinit>
    800062b4:	00000097          	auipc	ra,0x0
    800062b8:	16c080e7          	jalr	364(ra) # 80006420 <trapinithart>
    800062bc:	00000097          	auipc	ra,0x0
    800062c0:	5b4080e7          	jalr	1460(ra) # 80006870 <plicinit>
    800062c4:	00000097          	auipc	ra,0x0
    800062c8:	5d4080e7          	jalr	1492(ra) # 80006898 <plicinithart>
    800062cc:	00000097          	auipc	ra,0x0
    800062d0:	078080e7          	jalr	120(ra) # 80006344 <userinit>
    800062d4:	0ff0000f          	fence
    800062d8:	00100793          	li	a5,1
    800062dc:	00003517          	auipc	a0,0x3
    800062e0:	20450513          	addi	a0,a0,516 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800062e4:	00f4a023          	sw	a5,0(s1)
    800062e8:	00001097          	auipc	ra,0x1
    800062ec:	a40080e7          	jalr	-1472(ra) # 80006d28 <__printf>
    800062f0:	0000006f          	j	800062f0 <system_main+0xd4>

00000000800062f4 <cpuid>:
    800062f4:	ff010113          	addi	sp,sp,-16
    800062f8:	00813423          	sd	s0,8(sp)
    800062fc:	01010413          	addi	s0,sp,16
    80006300:	00020513          	mv	a0,tp
    80006304:	00813403          	ld	s0,8(sp)
    80006308:	0005051b          	sext.w	a0,a0
    8000630c:	01010113          	addi	sp,sp,16
    80006310:	00008067          	ret

0000000080006314 <mycpu>:
    80006314:	ff010113          	addi	sp,sp,-16
    80006318:	00813423          	sd	s0,8(sp)
    8000631c:	01010413          	addi	s0,sp,16
    80006320:	00020793          	mv	a5,tp
    80006324:	00813403          	ld	s0,8(sp)
    80006328:	0007879b          	sext.w	a5,a5
    8000632c:	00779793          	slli	a5,a5,0x7
    80006330:	0000a517          	auipc	a0,0xa
    80006334:	6e050513          	addi	a0,a0,1760 # 80010a10 <cpus>
    80006338:	00f50533          	add	a0,a0,a5
    8000633c:	01010113          	addi	sp,sp,16
    80006340:	00008067          	ret

0000000080006344 <userinit>:
    80006344:	ff010113          	addi	sp,sp,-16
    80006348:	00813423          	sd	s0,8(sp)
    8000634c:	01010413          	addi	s0,sp,16
    80006350:	00813403          	ld	s0,8(sp)
    80006354:	01010113          	addi	sp,sp,16
    80006358:	ffffd317          	auipc	t1,0xffffd
    8000635c:	4bc30067          	jr	1212(t1) # 80003814 <main>

0000000080006360 <either_copyout>:
    80006360:	ff010113          	addi	sp,sp,-16
    80006364:	00813023          	sd	s0,0(sp)
    80006368:	00113423          	sd	ra,8(sp)
    8000636c:	01010413          	addi	s0,sp,16
    80006370:	02051663          	bnez	a0,8000639c <either_copyout+0x3c>
    80006374:	00058513          	mv	a0,a1
    80006378:	00060593          	mv	a1,a2
    8000637c:	0006861b          	sext.w	a2,a3
    80006380:	00002097          	auipc	ra,0x2
    80006384:	c54080e7          	jalr	-940(ra) # 80007fd4 <__memmove>
    80006388:	00813083          	ld	ra,8(sp)
    8000638c:	00013403          	ld	s0,0(sp)
    80006390:	00000513          	li	a0,0
    80006394:	01010113          	addi	sp,sp,16
    80006398:	00008067          	ret
    8000639c:	00003517          	auipc	a0,0x3
    800063a0:	18450513          	addi	a0,a0,388 # 80009520 <CONSOLE_STATUS+0x510>
    800063a4:	00001097          	auipc	ra,0x1
    800063a8:	928080e7          	jalr	-1752(ra) # 80006ccc <panic>

00000000800063ac <either_copyin>:
    800063ac:	ff010113          	addi	sp,sp,-16
    800063b0:	00813023          	sd	s0,0(sp)
    800063b4:	00113423          	sd	ra,8(sp)
    800063b8:	01010413          	addi	s0,sp,16
    800063bc:	02059463          	bnez	a1,800063e4 <either_copyin+0x38>
    800063c0:	00060593          	mv	a1,a2
    800063c4:	0006861b          	sext.w	a2,a3
    800063c8:	00002097          	auipc	ra,0x2
    800063cc:	c0c080e7          	jalr	-1012(ra) # 80007fd4 <__memmove>
    800063d0:	00813083          	ld	ra,8(sp)
    800063d4:	00013403          	ld	s0,0(sp)
    800063d8:	00000513          	li	a0,0
    800063dc:	01010113          	addi	sp,sp,16
    800063e0:	00008067          	ret
    800063e4:	00003517          	auipc	a0,0x3
    800063e8:	16450513          	addi	a0,a0,356 # 80009548 <CONSOLE_STATUS+0x538>
    800063ec:	00001097          	auipc	ra,0x1
    800063f0:	8e0080e7          	jalr	-1824(ra) # 80006ccc <panic>

00000000800063f4 <trapinit>:
    800063f4:	ff010113          	addi	sp,sp,-16
    800063f8:	00813423          	sd	s0,8(sp)
    800063fc:	01010413          	addi	s0,sp,16
    80006400:	00813403          	ld	s0,8(sp)
    80006404:	00003597          	auipc	a1,0x3
    80006408:	16c58593          	addi	a1,a1,364 # 80009570 <CONSOLE_STATUS+0x560>
    8000640c:	0000a517          	auipc	a0,0xa
    80006410:	68450513          	addi	a0,a0,1668 # 80010a90 <tickslock>
    80006414:	01010113          	addi	sp,sp,16
    80006418:	00001317          	auipc	t1,0x1
    8000641c:	5c030067          	jr	1472(t1) # 800079d8 <initlock>

0000000080006420 <trapinithart>:
    80006420:	ff010113          	addi	sp,sp,-16
    80006424:	00813423          	sd	s0,8(sp)
    80006428:	01010413          	addi	s0,sp,16
    8000642c:	00000797          	auipc	a5,0x0
    80006430:	2f478793          	addi	a5,a5,756 # 80006720 <kernelvec>
    80006434:	10579073          	csrw	stvec,a5
    80006438:	00813403          	ld	s0,8(sp)
    8000643c:	01010113          	addi	sp,sp,16
    80006440:	00008067          	ret

0000000080006444 <usertrap>:
    80006444:	ff010113          	addi	sp,sp,-16
    80006448:	00813423          	sd	s0,8(sp)
    8000644c:	01010413          	addi	s0,sp,16
    80006450:	00813403          	ld	s0,8(sp)
    80006454:	01010113          	addi	sp,sp,16
    80006458:	00008067          	ret

000000008000645c <usertrapret>:
    8000645c:	ff010113          	addi	sp,sp,-16
    80006460:	00813423          	sd	s0,8(sp)
    80006464:	01010413          	addi	s0,sp,16
    80006468:	00813403          	ld	s0,8(sp)
    8000646c:	01010113          	addi	sp,sp,16
    80006470:	00008067          	ret

0000000080006474 <kerneltrap>:
    80006474:	fe010113          	addi	sp,sp,-32
    80006478:	00813823          	sd	s0,16(sp)
    8000647c:	00113c23          	sd	ra,24(sp)
    80006480:	00913423          	sd	s1,8(sp)
    80006484:	02010413          	addi	s0,sp,32
    80006488:	142025f3          	csrr	a1,scause
    8000648c:	100027f3          	csrr	a5,sstatus
    80006490:	0027f793          	andi	a5,a5,2
    80006494:	10079c63          	bnez	a5,800065ac <kerneltrap+0x138>
    80006498:	142027f3          	csrr	a5,scause
    8000649c:	0207ce63          	bltz	a5,800064d8 <kerneltrap+0x64>
    800064a0:	00003517          	auipc	a0,0x3
    800064a4:	11850513          	addi	a0,a0,280 # 800095b8 <CONSOLE_STATUS+0x5a8>
    800064a8:	00001097          	auipc	ra,0x1
    800064ac:	880080e7          	jalr	-1920(ra) # 80006d28 <__printf>
    800064b0:	141025f3          	csrr	a1,sepc
    800064b4:	14302673          	csrr	a2,stval
    800064b8:	00003517          	auipc	a0,0x3
    800064bc:	11050513          	addi	a0,a0,272 # 800095c8 <CONSOLE_STATUS+0x5b8>
    800064c0:	00001097          	auipc	ra,0x1
    800064c4:	868080e7          	jalr	-1944(ra) # 80006d28 <__printf>
    800064c8:	00003517          	auipc	a0,0x3
    800064cc:	11850513          	addi	a0,a0,280 # 800095e0 <CONSOLE_STATUS+0x5d0>
    800064d0:	00000097          	auipc	ra,0x0
    800064d4:	7fc080e7          	jalr	2044(ra) # 80006ccc <panic>
    800064d8:	0ff7f713          	andi	a4,a5,255
    800064dc:	00900693          	li	a3,9
    800064e0:	04d70063          	beq	a4,a3,80006520 <kerneltrap+0xac>
    800064e4:	fff00713          	li	a4,-1
    800064e8:	03f71713          	slli	a4,a4,0x3f
    800064ec:	00170713          	addi	a4,a4,1
    800064f0:	fae798e3          	bne	a5,a4,800064a0 <kerneltrap+0x2c>
    800064f4:	00000097          	auipc	ra,0x0
    800064f8:	e00080e7          	jalr	-512(ra) # 800062f4 <cpuid>
    800064fc:	06050663          	beqz	a0,80006568 <kerneltrap+0xf4>
    80006500:	144027f3          	csrr	a5,sip
    80006504:	ffd7f793          	andi	a5,a5,-3
    80006508:	14479073          	csrw	sip,a5
    8000650c:	01813083          	ld	ra,24(sp)
    80006510:	01013403          	ld	s0,16(sp)
    80006514:	00813483          	ld	s1,8(sp)
    80006518:	02010113          	addi	sp,sp,32
    8000651c:	00008067          	ret
    80006520:	00000097          	auipc	ra,0x0
    80006524:	3c4080e7          	jalr	964(ra) # 800068e4 <plic_claim>
    80006528:	00a00793          	li	a5,10
    8000652c:	00050493          	mv	s1,a0
    80006530:	06f50863          	beq	a0,a5,800065a0 <kerneltrap+0x12c>
    80006534:	fc050ce3          	beqz	a0,8000650c <kerneltrap+0x98>
    80006538:	00050593          	mv	a1,a0
    8000653c:	00003517          	auipc	a0,0x3
    80006540:	05c50513          	addi	a0,a0,92 # 80009598 <CONSOLE_STATUS+0x588>
    80006544:	00000097          	auipc	ra,0x0
    80006548:	7e4080e7          	jalr	2020(ra) # 80006d28 <__printf>
    8000654c:	01013403          	ld	s0,16(sp)
    80006550:	01813083          	ld	ra,24(sp)
    80006554:	00048513          	mv	a0,s1
    80006558:	00813483          	ld	s1,8(sp)
    8000655c:	02010113          	addi	sp,sp,32
    80006560:	00000317          	auipc	t1,0x0
    80006564:	3bc30067          	jr	956(t1) # 8000691c <plic_complete>
    80006568:	0000a517          	auipc	a0,0xa
    8000656c:	52850513          	addi	a0,a0,1320 # 80010a90 <tickslock>
    80006570:	00001097          	auipc	ra,0x1
    80006574:	48c080e7          	jalr	1164(ra) # 800079fc <acquire>
    80006578:	00005717          	auipc	a4,0x5
    8000657c:	36c70713          	addi	a4,a4,876 # 8000b8e4 <ticks>
    80006580:	00072783          	lw	a5,0(a4)
    80006584:	0000a517          	auipc	a0,0xa
    80006588:	50c50513          	addi	a0,a0,1292 # 80010a90 <tickslock>
    8000658c:	0017879b          	addiw	a5,a5,1
    80006590:	00f72023          	sw	a5,0(a4)
    80006594:	00001097          	auipc	ra,0x1
    80006598:	534080e7          	jalr	1332(ra) # 80007ac8 <release>
    8000659c:	f65ff06f          	j	80006500 <kerneltrap+0x8c>
    800065a0:	00001097          	auipc	ra,0x1
    800065a4:	090080e7          	jalr	144(ra) # 80007630 <uartintr>
    800065a8:	fa5ff06f          	j	8000654c <kerneltrap+0xd8>
    800065ac:	00003517          	auipc	a0,0x3
    800065b0:	fcc50513          	addi	a0,a0,-52 # 80009578 <CONSOLE_STATUS+0x568>
    800065b4:	00000097          	auipc	ra,0x0
    800065b8:	718080e7          	jalr	1816(ra) # 80006ccc <panic>

00000000800065bc <clockintr>:
    800065bc:	fe010113          	addi	sp,sp,-32
    800065c0:	00813823          	sd	s0,16(sp)
    800065c4:	00913423          	sd	s1,8(sp)
    800065c8:	00113c23          	sd	ra,24(sp)
    800065cc:	02010413          	addi	s0,sp,32
    800065d0:	0000a497          	auipc	s1,0xa
    800065d4:	4c048493          	addi	s1,s1,1216 # 80010a90 <tickslock>
    800065d8:	00048513          	mv	a0,s1
    800065dc:	00001097          	auipc	ra,0x1
    800065e0:	420080e7          	jalr	1056(ra) # 800079fc <acquire>
    800065e4:	00005717          	auipc	a4,0x5
    800065e8:	30070713          	addi	a4,a4,768 # 8000b8e4 <ticks>
    800065ec:	00072783          	lw	a5,0(a4)
    800065f0:	01013403          	ld	s0,16(sp)
    800065f4:	01813083          	ld	ra,24(sp)
    800065f8:	00048513          	mv	a0,s1
    800065fc:	0017879b          	addiw	a5,a5,1
    80006600:	00813483          	ld	s1,8(sp)
    80006604:	00f72023          	sw	a5,0(a4)
    80006608:	02010113          	addi	sp,sp,32
    8000660c:	00001317          	auipc	t1,0x1
    80006610:	4bc30067          	jr	1212(t1) # 80007ac8 <release>

0000000080006614 <devintr>:
    80006614:	142027f3          	csrr	a5,scause
    80006618:	00000513          	li	a0,0
    8000661c:	0007c463          	bltz	a5,80006624 <devintr+0x10>
    80006620:	00008067          	ret
    80006624:	fe010113          	addi	sp,sp,-32
    80006628:	00813823          	sd	s0,16(sp)
    8000662c:	00113c23          	sd	ra,24(sp)
    80006630:	00913423          	sd	s1,8(sp)
    80006634:	02010413          	addi	s0,sp,32
    80006638:	0ff7f713          	andi	a4,a5,255
    8000663c:	00900693          	li	a3,9
    80006640:	04d70c63          	beq	a4,a3,80006698 <devintr+0x84>
    80006644:	fff00713          	li	a4,-1
    80006648:	03f71713          	slli	a4,a4,0x3f
    8000664c:	00170713          	addi	a4,a4,1
    80006650:	00e78c63          	beq	a5,a4,80006668 <devintr+0x54>
    80006654:	01813083          	ld	ra,24(sp)
    80006658:	01013403          	ld	s0,16(sp)
    8000665c:	00813483          	ld	s1,8(sp)
    80006660:	02010113          	addi	sp,sp,32
    80006664:	00008067          	ret
    80006668:	00000097          	auipc	ra,0x0
    8000666c:	c8c080e7          	jalr	-884(ra) # 800062f4 <cpuid>
    80006670:	06050663          	beqz	a0,800066dc <devintr+0xc8>
    80006674:	144027f3          	csrr	a5,sip
    80006678:	ffd7f793          	andi	a5,a5,-3
    8000667c:	14479073          	csrw	sip,a5
    80006680:	01813083          	ld	ra,24(sp)
    80006684:	01013403          	ld	s0,16(sp)
    80006688:	00813483          	ld	s1,8(sp)
    8000668c:	00200513          	li	a0,2
    80006690:	02010113          	addi	sp,sp,32
    80006694:	00008067          	ret
    80006698:	00000097          	auipc	ra,0x0
    8000669c:	24c080e7          	jalr	588(ra) # 800068e4 <plic_claim>
    800066a0:	00a00793          	li	a5,10
    800066a4:	00050493          	mv	s1,a0
    800066a8:	06f50663          	beq	a0,a5,80006714 <devintr+0x100>
    800066ac:	00100513          	li	a0,1
    800066b0:	fa0482e3          	beqz	s1,80006654 <devintr+0x40>
    800066b4:	00048593          	mv	a1,s1
    800066b8:	00003517          	auipc	a0,0x3
    800066bc:	ee050513          	addi	a0,a0,-288 # 80009598 <CONSOLE_STATUS+0x588>
    800066c0:	00000097          	auipc	ra,0x0
    800066c4:	668080e7          	jalr	1640(ra) # 80006d28 <__printf>
    800066c8:	00048513          	mv	a0,s1
    800066cc:	00000097          	auipc	ra,0x0
    800066d0:	250080e7          	jalr	592(ra) # 8000691c <plic_complete>
    800066d4:	00100513          	li	a0,1
    800066d8:	f7dff06f          	j	80006654 <devintr+0x40>
    800066dc:	0000a517          	auipc	a0,0xa
    800066e0:	3b450513          	addi	a0,a0,948 # 80010a90 <tickslock>
    800066e4:	00001097          	auipc	ra,0x1
    800066e8:	318080e7          	jalr	792(ra) # 800079fc <acquire>
    800066ec:	00005717          	auipc	a4,0x5
    800066f0:	1f870713          	addi	a4,a4,504 # 8000b8e4 <ticks>
    800066f4:	00072783          	lw	a5,0(a4)
    800066f8:	0000a517          	auipc	a0,0xa
    800066fc:	39850513          	addi	a0,a0,920 # 80010a90 <tickslock>
    80006700:	0017879b          	addiw	a5,a5,1
    80006704:	00f72023          	sw	a5,0(a4)
    80006708:	00001097          	auipc	ra,0x1
    8000670c:	3c0080e7          	jalr	960(ra) # 80007ac8 <release>
    80006710:	f65ff06f          	j	80006674 <devintr+0x60>
    80006714:	00001097          	auipc	ra,0x1
    80006718:	f1c080e7          	jalr	-228(ra) # 80007630 <uartintr>
    8000671c:	fadff06f          	j	800066c8 <devintr+0xb4>

0000000080006720 <kernelvec>:
    80006720:	f0010113          	addi	sp,sp,-256
    80006724:	00113023          	sd	ra,0(sp)
    80006728:	00213423          	sd	sp,8(sp)
    8000672c:	00313823          	sd	gp,16(sp)
    80006730:	00413c23          	sd	tp,24(sp)
    80006734:	02513023          	sd	t0,32(sp)
    80006738:	02613423          	sd	t1,40(sp)
    8000673c:	02713823          	sd	t2,48(sp)
    80006740:	02813c23          	sd	s0,56(sp)
    80006744:	04913023          	sd	s1,64(sp)
    80006748:	04a13423          	sd	a0,72(sp)
    8000674c:	04b13823          	sd	a1,80(sp)
    80006750:	04c13c23          	sd	a2,88(sp)
    80006754:	06d13023          	sd	a3,96(sp)
    80006758:	06e13423          	sd	a4,104(sp)
    8000675c:	06f13823          	sd	a5,112(sp)
    80006760:	07013c23          	sd	a6,120(sp)
    80006764:	09113023          	sd	a7,128(sp)
    80006768:	09213423          	sd	s2,136(sp)
    8000676c:	09313823          	sd	s3,144(sp)
    80006770:	09413c23          	sd	s4,152(sp)
    80006774:	0b513023          	sd	s5,160(sp)
    80006778:	0b613423          	sd	s6,168(sp)
    8000677c:	0b713823          	sd	s7,176(sp)
    80006780:	0b813c23          	sd	s8,184(sp)
    80006784:	0d913023          	sd	s9,192(sp)
    80006788:	0da13423          	sd	s10,200(sp)
    8000678c:	0db13823          	sd	s11,208(sp)
    80006790:	0dc13c23          	sd	t3,216(sp)
    80006794:	0fd13023          	sd	t4,224(sp)
    80006798:	0fe13423          	sd	t5,232(sp)
    8000679c:	0ff13823          	sd	t6,240(sp)
    800067a0:	cd5ff0ef          	jal	ra,80006474 <kerneltrap>
    800067a4:	00013083          	ld	ra,0(sp)
    800067a8:	00813103          	ld	sp,8(sp)
    800067ac:	01013183          	ld	gp,16(sp)
    800067b0:	02013283          	ld	t0,32(sp)
    800067b4:	02813303          	ld	t1,40(sp)
    800067b8:	03013383          	ld	t2,48(sp)
    800067bc:	03813403          	ld	s0,56(sp)
    800067c0:	04013483          	ld	s1,64(sp)
    800067c4:	04813503          	ld	a0,72(sp)
    800067c8:	05013583          	ld	a1,80(sp)
    800067cc:	05813603          	ld	a2,88(sp)
    800067d0:	06013683          	ld	a3,96(sp)
    800067d4:	06813703          	ld	a4,104(sp)
    800067d8:	07013783          	ld	a5,112(sp)
    800067dc:	07813803          	ld	a6,120(sp)
    800067e0:	08013883          	ld	a7,128(sp)
    800067e4:	08813903          	ld	s2,136(sp)
    800067e8:	09013983          	ld	s3,144(sp)
    800067ec:	09813a03          	ld	s4,152(sp)
    800067f0:	0a013a83          	ld	s5,160(sp)
    800067f4:	0a813b03          	ld	s6,168(sp)
    800067f8:	0b013b83          	ld	s7,176(sp)
    800067fc:	0b813c03          	ld	s8,184(sp)
    80006800:	0c013c83          	ld	s9,192(sp)
    80006804:	0c813d03          	ld	s10,200(sp)
    80006808:	0d013d83          	ld	s11,208(sp)
    8000680c:	0d813e03          	ld	t3,216(sp)
    80006810:	0e013e83          	ld	t4,224(sp)
    80006814:	0e813f03          	ld	t5,232(sp)
    80006818:	0f013f83          	ld	t6,240(sp)
    8000681c:	10010113          	addi	sp,sp,256
    80006820:	10200073          	sret
    80006824:	00000013          	nop
    80006828:	00000013          	nop
    8000682c:	00000013          	nop

0000000080006830 <timervec>:
    80006830:	34051573          	csrrw	a0,mscratch,a0
    80006834:	00b53023          	sd	a1,0(a0)
    80006838:	00c53423          	sd	a2,8(a0)
    8000683c:	00d53823          	sd	a3,16(a0)
    80006840:	01853583          	ld	a1,24(a0)
    80006844:	02053603          	ld	a2,32(a0)
    80006848:	0005b683          	ld	a3,0(a1)
    8000684c:	00c686b3          	add	a3,a3,a2
    80006850:	00d5b023          	sd	a3,0(a1)
    80006854:	00200593          	li	a1,2
    80006858:	14459073          	csrw	sip,a1
    8000685c:	01053683          	ld	a3,16(a0)
    80006860:	00853603          	ld	a2,8(a0)
    80006864:	00053583          	ld	a1,0(a0)
    80006868:	34051573          	csrrw	a0,mscratch,a0
    8000686c:	30200073          	mret

0000000080006870 <plicinit>:
    80006870:	ff010113          	addi	sp,sp,-16
    80006874:	00813423          	sd	s0,8(sp)
    80006878:	01010413          	addi	s0,sp,16
    8000687c:	00813403          	ld	s0,8(sp)
    80006880:	0c0007b7          	lui	a5,0xc000
    80006884:	00100713          	li	a4,1
    80006888:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000688c:	00e7a223          	sw	a4,4(a5)
    80006890:	01010113          	addi	sp,sp,16
    80006894:	00008067          	ret

0000000080006898 <plicinithart>:
    80006898:	ff010113          	addi	sp,sp,-16
    8000689c:	00813023          	sd	s0,0(sp)
    800068a0:	00113423          	sd	ra,8(sp)
    800068a4:	01010413          	addi	s0,sp,16
    800068a8:	00000097          	auipc	ra,0x0
    800068ac:	a4c080e7          	jalr	-1460(ra) # 800062f4 <cpuid>
    800068b0:	0085171b          	slliw	a4,a0,0x8
    800068b4:	0c0027b7          	lui	a5,0xc002
    800068b8:	00e787b3          	add	a5,a5,a4
    800068bc:	40200713          	li	a4,1026
    800068c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800068c4:	00813083          	ld	ra,8(sp)
    800068c8:	00013403          	ld	s0,0(sp)
    800068cc:	00d5151b          	slliw	a0,a0,0xd
    800068d0:	0c2017b7          	lui	a5,0xc201
    800068d4:	00a78533          	add	a0,a5,a0
    800068d8:	00052023          	sw	zero,0(a0)
    800068dc:	01010113          	addi	sp,sp,16
    800068e0:	00008067          	ret

00000000800068e4 <plic_claim>:
    800068e4:	ff010113          	addi	sp,sp,-16
    800068e8:	00813023          	sd	s0,0(sp)
    800068ec:	00113423          	sd	ra,8(sp)
    800068f0:	01010413          	addi	s0,sp,16
    800068f4:	00000097          	auipc	ra,0x0
    800068f8:	a00080e7          	jalr	-1536(ra) # 800062f4 <cpuid>
    800068fc:	00813083          	ld	ra,8(sp)
    80006900:	00013403          	ld	s0,0(sp)
    80006904:	00d5151b          	slliw	a0,a0,0xd
    80006908:	0c2017b7          	lui	a5,0xc201
    8000690c:	00a78533          	add	a0,a5,a0
    80006910:	00452503          	lw	a0,4(a0)
    80006914:	01010113          	addi	sp,sp,16
    80006918:	00008067          	ret

000000008000691c <plic_complete>:
    8000691c:	fe010113          	addi	sp,sp,-32
    80006920:	00813823          	sd	s0,16(sp)
    80006924:	00913423          	sd	s1,8(sp)
    80006928:	00113c23          	sd	ra,24(sp)
    8000692c:	02010413          	addi	s0,sp,32
    80006930:	00050493          	mv	s1,a0
    80006934:	00000097          	auipc	ra,0x0
    80006938:	9c0080e7          	jalr	-1600(ra) # 800062f4 <cpuid>
    8000693c:	01813083          	ld	ra,24(sp)
    80006940:	01013403          	ld	s0,16(sp)
    80006944:	00d5179b          	slliw	a5,a0,0xd
    80006948:	0c201737          	lui	a4,0xc201
    8000694c:	00f707b3          	add	a5,a4,a5
    80006950:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006954:	00813483          	ld	s1,8(sp)
    80006958:	02010113          	addi	sp,sp,32
    8000695c:	00008067          	ret

0000000080006960 <consolewrite>:
    80006960:	fb010113          	addi	sp,sp,-80
    80006964:	04813023          	sd	s0,64(sp)
    80006968:	04113423          	sd	ra,72(sp)
    8000696c:	02913c23          	sd	s1,56(sp)
    80006970:	03213823          	sd	s2,48(sp)
    80006974:	03313423          	sd	s3,40(sp)
    80006978:	03413023          	sd	s4,32(sp)
    8000697c:	01513c23          	sd	s5,24(sp)
    80006980:	05010413          	addi	s0,sp,80
    80006984:	06c05c63          	blez	a2,800069fc <consolewrite+0x9c>
    80006988:	00060993          	mv	s3,a2
    8000698c:	00050a13          	mv	s4,a0
    80006990:	00058493          	mv	s1,a1
    80006994:	00000913          	li	s2,0
    80006998:	fff00a93          	li	s5,-1
    8000699c:	01c0006f          	j	800069b8 <consolewrite+0x58>
    800069a0:	fbf44503          	lbu	a0,-65(s0)
    800069a4:	0019091b          	addiw	s2,s2,1
    800069a8:	00148493          	addi	s1,s1,1
    800069ac:	00001097          	auipc	ra,0x1
    800069b0:	a9c080e7          	jalr	-1380(ra) # 80007448 <uartputc>
    800069b4:	03298063          	beq	s3,s2,800069d4 <consolewrite+0x74>
    800069b8:	00048613          	mv	a2,s1
    800069bc:	00100693          	li	a3,1
    800069c0:	000a0593          	mv	a1,s4
    800069c4:	fbf40513          	addi	a0,s0,-65
    800069c8:	00000097          	auipc	ra,0x0
    800069cc:	9e4080e7          	jalr	-1564(ra) # 800063ac <either_copyin>
    800069d0:	fd5518e3          	bne	a0,s5,800069a0 <consolewrite+0x40>
    800069d4:	04813083          	ld	ra,72(sp)
    800069d8:	04013403          	ld	s0,64(sp)
    800069dc:	03813483          	ld	s1,56(sp)
    800069e0:	02813983          	ld	s3,40(sp)
    800069e4:	02013a03          	ld	s4,32(sp)
    800069e8:	01813a83          	ld	s5,24(sp)
    800069ec:	00090513          	mv	a0,s2
    800069f0:	03013903          	ld	s2,48(sp)
    800069f4:	05010113          	addi	sp,sp,80
    800069f8:	00008067          	ret
    800069fc:	00000913          	li	s2,0
    80006a00:	fd5ff06f          	j	800069d4 <consolewrite+0x74>

0000000080006a04 <consoleread>:
    80006a04:	f9010113          	addi	sp,sp,-112
    80006a08:	06813023          	sd	s0,96(sp)
    80006a0c:	04913c23          	sd	s1,88(sp)
    80006a10:	05213823          	sd	s2,80(sp)
    80006a14:	05313423          	sd	s3,72(sp)
    80006a18:	05413023          	sd	s4,64(sp)
    80006a1c:	03513c23          	sd	s5,56(sp)
    80006a20:	03613823          	sd	s6,48(sp)
    80006a24:	03713423          	sd	s7,40(sp)
    80006a28:	03813023          	sd	s8,32(sp)
    80006a2c:	06113423          	sd	ra,104(sp)
    80006a30:	01913c23          	sd	s9,24(sp)
    80006a34:	07010413          	addi	s0,sp,112
    80006a38:	00060b93          	mv	s7,a2
    80006a3c:	00050913          	mv	s2,a0
    80006a40:	00058c13          	mv	s8,a1
    80006a44:	00060b1b          	sext.w	s6,a2
    80006a48:	0000a497          	auipc	s1,0xa
    80006a4c:	07048493          	addi	s1,s1,112 # 80010ab8 <cons>
    80006a50:	00400993          	li	s3,4
    80006a54:	fff00a13          	li	s4,-1
    80006a58:	00a00a93          	li	s5,10
    80006a5c:	05705e63          	blez	s7,80006ab8 <consoleread+0xb4>
    80006a60:	09c4a703          	lw	a4,156(s1)
    80006a64:	0984a783          	lw	a5,152(s1)
    80006a68:	0007071b          	sext.w	a4,a4
    80006a6c:	08e78463          	beq	a5,a4,80006af4 <consoleread+0xf0>
    80006a70:	07f7f713          	andi	a4,a5,127
    80006a74:	00e48733          	add	a4,s1,a4
    80006a78:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006a7c:	0017869b          	addiw	a3,a5,1
    80006a80:	08d4ac23          	sw	a3,152(s1)
    80006a84:	00070c9b          	sext.w	s9,a4
    80006a88:	0b370663          	beq	a4,s3,80006b34 <consoleread+0x130>
    80006a8c:	00100693          	li	a3,1
    80006a90:	f9f40613          	addi	a2,s0,-97
    80006a94:	000c0593          	mv	a1,s8
    80006a98:	00090513          	mv	a0,s2
    80006a9c:	f8e40fa3          	sb	a4,-97(s0)
    80006aa0:	00000097          	auipc	ra,0x0
    80006aa4:	8c0080e7          	jalr	-1856(ra) # 80006360 <either_copyout>
    80006aa8:	01450863          	beq	a0,s4,80006ab8 <consoleread+0xb4>
    80006aac:	001c0c13          	addi	s8,s8,1
    80006ab0:	fffb8b9b          	addiw	s7,s7,-1
    80006ab4:	fb5c94e3          	bne	s9,s5,80006a5c <consoleread+0x58>
    80006ab8:	000b851b          	sext.w	a0,s7
    80006abc:	06813083          	ld	ra,104(sp)
    80006ac0:	06013403          	ld	s0,96(sp)
    80006ac4:	05813483          	ld	s1,88(sp)
    80006ac8:	05013903          	ld	s2,80(sp)
    80006acc:	04813983          	ld	s3,72(sp)
    80006ad0:	04013a03          	ld	s4,64(sp)
    80006ad4:	03813a83          	ld	s5,56(sp)
    80006ad8:	02813b83          	ld	s7,40(sp)
    80006adc:	02013c03          	ld	s8,32(sp)
    80006ae0:	01813c83          	ld	s9,24(sp)
    80006ae4:	40ab053b          	subw	a0,s6,a0
    80006ae8:	03013b03          	ld	s6,48(sp)
    80006aec:	07010113          	addi	sp,sp,112
    80006af0:	00008067          	ret
    80006af4:	00001097          	auipc	ra,0x1
    80006af8:	1d8080e7          	jalr	472(ra) # 80007ccc <push_on>
    80006afc:	0984a703          	lw	a4,152(s1)
    80006b00:	09c4a783          	lw	a5,156(s1)
    80006b04:	0007879b          	sext.w	a5,a5
    80006b08:	fef70ce3          	beq	a4,a5,80006b00 <consoleread+0xfc>
    80006b0c:	00001097          	auipc	ra,0x1
    80006b10:	234080e7          	jalr	564(ra) # 80007d40 <pop_on>
    80006b14:	0984a783          	lw	a5,152(s1)
    80006b18:	07f7f713          	andi	a4,a5,127
    80006b1c:	00e48733          	add	a4,s1,a4
    80006b20:	01874703          	lbu	a4,24(a4)
    80006b24:	0017869b          	addiw	a3,a5,1
    80006b28:	08d4ac23          	sw	a3,152(s1)
    80006b2c:	00070c9b          	sext.w	s9,a4
    80006b30:	f5371ee3          	bne	a4,s3,80006a8c <consoleread+0x88>
    80006b34:	000b851b          	sext.w	a0,s7
    80006b38:	f96bf2e3          	bgeu	s7,s6,80006abc <consoleread+0xb8>
    80006b3c:	08f4ac23          	sw	a5,152(s1)
    80006b40:	f7dff06f          	j	80006abc <consoleread+0xb8>

0000000080006b44 <consputc>:
    80006b44:	10000793          	li	a5,256
    80006b48:	00f50663          	beq	a0,a5,80006b54 <consputc+0x10>
    80006b4c:	00001317          	auipc	t1,0x1
    80006b50:	9f430067          	jr	-1548(t1) # 80007540 <uartputc_sync>
    80006b54:	ff010113          	addi	sp,sp,-16
    80006b58:	00113423          	sd	ra,8(sp)
    80006b5c:	00813023          	sd	s0,0(sp)
    80006b60:	01010413          	addi	s0,sp,16
    80006b64:	00800513          	li	a0,8
    80006b68:	00001097          	auipc	ra,0x1
    80006b6c:	9d8080e7          	jalr	-1576(ra) # 80007540 <uartputc_sync>
    80006b70:	02000513          	li	a0,32
    80006b74:	00001097          	auipc	ra,0x1
    80006b78:	9cc080e7          	jalr	-1588(ra) # 80007540 <uartputc_sync>
    80006b7c:	00013403          	ld	s0,0(sp)
    80006b80:	00813083          	ld	ra,8(sp)
    80006b84:	00800513          	li	a0,8
    80006b88:	01010113          	addi	sp,sp,16
    80006b8c:	00001317          	auipc	t1,0x1
    80006b90:	9b430067          	jr	-1612(t1) # 80007540 <uartputc_sync>

0000000080006b94 <consoleintr>:
    80006b94:	fe010113          	addi	sp,sp,-32
    80006b98:	00813823          	sd	s0,16(sp)
    80006b9c:	00913423          	sd	s1,8(sp)
    80006ba0:	01213023          	sd	s2,0(sp)
    80006ba4:	00113c23          	sd	ra,24(sp)
    80006ba8:	02010413          	addi	s0,sp,32
    80006bac:	0000a917          	auipc	s2,0xa
    80006bb0:	f0c90913          	addi	s2,s2,-244 # 80010ab8 <cons>
    80006bb4:	00050493          	mv	s1,a0
    80006bb8:	00090513          	mv	a0,s2
    80006bbc:	00001097          	auipc	ra,0x1
    80006bc0:	e40080e7          	jalr	-448(ra) # 800079fc <acquire>
    80006bc4:	02048c63          	beqz	s1,80006bfc <consoleintr+0x68>
    80006bc8:	0a092783          	lw	a5,160(s2)
    80006bcc:	09892703          	lw	a4,152(s2)
    80006bd0:	07f00693          	li	a3,127
    80006bd4:	40e7873b          	subw	a4,a5,a4
    80006bd8:	02e6e263          	bltu	a3,a4,80006bfc <consoleintr+0x68>
    80006bdc:	00d00713          	li	a4,13
    80006be0:	04e48063          	beq	s1,a4,80006c20 <consoleintr+0x8c>
    80006be4:	07f7f713          	andi	a4,a5,127
    80006be8:	00e90733          	add	a4,s2,a4
    80006bec:	0017879b          	addiw	a5,a5,1
    80006bf0:	0af92023          	sw	a5,160(s2)
    80006bf4:	00970c23          	sb	s1,24(a4)
    80006bf8:	08f92e23          	sw	a5,156(s2)
    80006bfc:	01013403          	ld	s0,16(sp)
    80006c00:	01813083          	ld	ra,24(sp)
    80006c04:	00813483          	ld	s1,8(sp)
    80006c08:	00013903          	ld	s2,0(sp)
    80006c0c:	0000a517          	auipc	a0,0xa
    80006c10:	eac50513          	addi	a0,a0,-340 # 80010ab8 <cons>
    80006c14:	02010113          	addi	sp,sp,32
    80006c18:	00001317          	auipc	t1,0x1
    80006c1c:	eb030067          	jr	-336(t1) # 80007ac8 <release>
    80006c20:	00a00493          	li	s1,10
    80006c24:	fc1ff06f          	j	80006be4 <consoleintr+0x50>

0000000080006c28 <consoleinit>:
    80006c28:	fe010113          	addi	sp,sp,-32
    80006c2c:	00113c23          	sd	ra,24(sp)
    80006c30:	00813823          	sd	s0,16(sp)
    80006c34:	00913423          	sd	s1,8(sp)
    80006c38:	02010413          	addi	s0,sp,32
    80006c3c:	0000a497          	auipc	s1,0xa
    80006c40:	e7c48493          	addi	s1,s1,-388 # 80010ab8 <cons>
    80006c44:	00048513          	mv	a0,s1
    80006c48:	00003597          	auipc	a1,0x3
    80006c4c:	9a858593          	addi	a1,a1,-1624 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006c50:	00001097          	auipc	ra,0x1
    80006c54:	d88080e7          	jalr	-632(ra) # 800079d8 <initlock>
    80006c58:	00000097          	auipc	ra,0x0
    80006c5c:	7ac080e7          	jalr	1964(ra) # 80007404 <uartinit>
    80006c60:	01813083          	ld	ra,24(sp)
    80006c64:	01013403          	ld	s0,16(sp)
    80006c68:	00000797          	auipc	a5,0x0
    80006c6c:	d9c78793          	addi	a5,a5,-612 # 80006a04 <consoleread>
    80006c70:	0af4bc23          	sd	a5,184(s1)
    80006c74:	00000797          	auipc	a5,0x0
    80006c78:	cec78793          	addi	a5,a5,-788 # 80006960 <consolewrite>
    80006c7c:	0cf4b023          	sd	a5,192(s1)
    80006c80:	00813483          	ld	s1,8(sp)
    80006c84:	02010113          	addi	sp,sp,32
    80006c88:	00008067          	ret

0000000080006c8c <console_read>:
    80006c8c:	ff010113          	addi	sp,sp,-16
    80006c90:	00813423          	sd	s0,8(sp)
    80006c94:	01010413          	addi	s0,sp,16
    80006c98:	00813403          	ld	s0,8(sp)
    80006c9c:	0000a317          	auipc	t1,0xa
    80006ca0:	ed433303          	ld	t1,-300(t1) # 80010b70 <devsw+0x10>
    80006ca4:	01010113          	addi	sp,sp,16
    80006ca8:	00030067          	jr	t1

0000000080006cac <console_write>:
    80006cac:	ff010113          	addi	sp,sp,-16
    80006cb0:	00813423          	sd	s0,8(sp)
    80006cb4:	01010413          	addi	s0,sp,16
    80006cb8:	00813403          	ld	s0,8(sp)
    80006cbc:	0000a317          	auipc	t1,0xa
    80006cc0:	ebc33303          	ld	t1,-324(t1) # 80010b78 <devsw+0x18>
    80006cc4:	01010113          	addi	sp,sp,16
    80006cc8:	00030067          	jr	t1

0000000080006ccc <panic>:
    80006ccc:	fe010113          	addi	sp,sp,-32
    80006cd0:	00113c23          	sd	ra,24(sp)
    80006cd4:	00813823          	sd	s0,16(sp)
    80006cd8:	00913423          	sd	s1,8(sp)
    80006cdc:	02010413          	addi	s0,sp,32
    80006ce0:	00050493          	mv	s1,a0
    80006ce4:	00003517          	auipc	a0,0x3
    80006ce8:	91450513          	addi	a0,a0,-1772 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80006cec:	0000a797          	auipc	a5,0xa
    80006cf0:	f207a623          	sw	zero,-212(a5) # 80010c18 <pr+0x18>
    80006cf4:	00000097          	auipc	ra,0x0
    80006cf8:	034080e7          	jalr	52(ra) # 80006d28 <__printf>
    80006cfc:	00048513          	mv	a0,s1
    80006d00:	00000097          	auipc	ra,0x0
    80006d04:	028080e7          	jalr	40(ra) # 80006d28 <__printf>
    80006d08:	00003517          	auipc	a0,0x3
    80006d0c:	8d050513          	addi	a0,a0,-1840 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	018080e7          	jalr	24(ra) # 80006d28 <__printf>
    80006d18:	00100793          	li	a5,1
    80006d1c:	00005717          	auipc	a4,0x5
    80006d20:	bcf72623          	sw	a5,-1076(a4) # 8000b8e8 <panicked>
    80006d24:	0000006f          	j	80006d24 <panic+0x58>

0000000080006d28 <__printf>:
    80006d28:	f3010113          	addi	sp,sp,-208
    80006d2c:	08813023          	sd	s0,128(sp)
    80006d30:	07313423          	sd	s3,104(sp)
    80006d34:	09010413          	addi	s0,sp,144
    80006d38:	05813023          	sd	s8,64(sp)
    80006d3c:	08113423          	sd	ra,136(sp)
    80006d40:	06913c23          	sd	s1,120(sp)
    80006d44:	07213823          	sd	s2,112(sp)
    80006d48:	07413023          	sd	s4,96(sp)
    80006d4c:	05513c23          	sd	s5,88(sp)
    80006d50:	05613823          	sd	s6,80(sp)
    80006d54:	05713423          	sd	s7,72(sp)
    80006d58:	03913c23          	sd	s9,56(sp)
    80006d5c:	03a13823          	sd	s10,48(sp)
    80006d60:	03b13423          	sd	s11,40(sp)
    80006d64:	0000a317          	auipc	t1,0xa
    80006d68:	e9c30313          	addi	t1,t1,-356 # 80010c00 <pr>
    80006d6c:	01832c03          	lw	s8,24(t1)
    80006d70:	00b43423          	sd	a1,8(s0)
    80006d74:	00c43823          	sd	a2,16(s0)
    80006d78:	00d43c23          	sd	a3,24(s0)
    80006d7c:	02e43023          	sd	a4,32(s0)
    80006d80:	02f43423          	sd	a5,40(s0)
    80006d84:	03043823          	sd	a6,48(s0)
    80006d88:	03143c23          	sd	a7,56(s0)
    80006d8c:	00050993          	mv	s3,a0
    80006d90:	4a0c1663          	bnez	s8,8000723c <__printf+0x514>
    80006d94:	60098c63          	beqz	s3,800073ac <__printf+0x684>
    80006d98:	0009c503          	lbu	a0,0(s3)
    80006d9c:	00840793          	addi	a5,s0,8
    80006da0:	f6f43c23          	sd	a5,-136(s0)
    80006da4:	00000493          	li	s1,0
    80006da8:	22050063          	beqz	a0,80006fc8 <__printf+0x2a0>
    80006dac:	00002a37          	lui	s4,0x2
    80006db0:	00018ab7          	lui	s5,0x18
    80006db4:	000f4b37          	lui	s6,0xf4
    80006db8:	00989bb7          	lui	s7,0x989
    80006dbc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006dc0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006dc4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006dc8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006dcc:	00148c9b          	addiw	s9,s1,1
    80006dd0:	02500793          	li	a5,37
    80006dd4:	01998933          	add	s2,s3,s9
    80006dd8:	38f51263          	bne	a0,a5,8000715c <__printf+0x434>
    80006ddc:	00094783          	lbu	a5,0(s2)
    80006de0:	00078c9b          	sext.w	s9,a5
    80006de4:	1e078263          	beqz	a5,80006fc8 <__printf+0x2a0>
    80006de8:	0024849b          	addiw	s1,s1,2
    80006dec:	07000713          	li	a4,112
    80006df0:	00998933          	add	s2,s3,s1
    80006df4:	38e78a63          	beq	a5,a4,80007188 <__printf+0x460>
    80006df8:	20f76863          	bltu	a4,a5,80007008 <__printf+0x2e0>
    80006dfc:	42a78863          	beq	a5,a0,8000722c <__printf+0x504>
    80006e00:	06400713          	li	a4,100
    80006e04:	40e79663          	bne	a5,a4,80007210 <__printf+0x4e8>
    80006e08:	f7843783          	ld	a5,-136(s0)
    80006e0c:	0007a603          	lw	a2,0(a5)
    80006e10:	00878793          	addi	a5,a5,8
    80006e14:	f6f43c23          	sd	a5,-136(s0)
    80006e18:	42064a63          	bltz	a2,8000724c <__printf+0x524>
    80006e1c:	00a00713          	li	a4,10
    80006e20:	02e677bb          	remuw	a5,a2,a4
    80006e24:	00002d97          	auipc	s11,0x2
    80006e28:	7fcd8d93          	addi	s11,s11,2044 # 80009620 <digits>
    80006e2c:	00900593          	li	a1,9
    80006e30:	0006051b          	sext.w	a0,a2
    80006e34:	00000c93          	li	s9,0
    80006e38:	02079793          	slli	a5,a5,0x20
    80006e3c:	0207d793          	srli	a5,a5,0x20
    80006e40:	00fd87b3          	add	a5,s11,a5
    80006e44:	0007c783          	lbu	a5,0(a5)
    80006e48:	02e656bb          	divuw	a3,a2,a4
    80006e4c:	f8f40023          	sb	a5,-128(s0)
    80006e50:	14c5d863          	bge	a1,a2,80006fa0 <__printf+0x278>
    80006e54:	06300593          	li	a1,99
    80006e58:	00100c93          	li	s9,1
    80006e5c:	02e6f7bb          	remuw	a5,a3,a4
    80006e60:	02079793          	slli	a5,a5,0x20
    80006e64:	0207d793          	srli	a5,a5,0x20
    80006e68:	00fd87b3          	add	a5,s11,a5
    80006e6c:	0007c783          	lbu	a5,0(a5)
    80006e70:	02e6d73b          	divuw	a4,a3,a4
    80006e74:	f8f400a3          	sb	a5,-127(s0)
    80006e78:	12a5f463          	bgeu	a1,a0,80006fa0 <__printf+0x278>
    80006e7c:	00a00693          	li	a3,10
    80006e80:	00900593          	li	a1,9
    80006e84:	02d777bb          	remuw	a5,a4,a3
    80006e88:	02079793          	slli	a5,a5,0x20
    80006e8c:	0207d793          	srli	a5,a5,0x20
    80006e90:	00fd87b3          	add	a5,s11,a5
    80006e94:	0007c503          	lbu	a0,0(a5)
    80006e98:	02d757bb          	divuw	a5,a4,a3
    80006e9c:	f8a40123          	sb	a0,-126(s0)
    80006ea0:	48e5f263          	bgeu	a1,a4,80007324 <__printf+0x5fc>
    80006ea4:	06300513          	li	a0,99
    80006ea8:	02d7f5bb          	remuw	a1,a5,a3
    80006eac:	02059593          	slli	a1,a1,0x20
    80006eb0:	0205d593          	srli	a1,a1,0x20
    80006eb4:	00bd85b3          	add	a1,s11,a1
    80006eb8:	0005c583          	lbu	a1,0(a1)
    80006ebc:	02d7d7bb          	divuw	a5,a5,a3
    80006ec0:	f8b401a3          	sb	a1,-125(s0)
    80006ec4:	48e57263          	bgeu	a0,a4,80007348 <__printf+0x620>
    80006ec8:	3e700513          	li	a0,999
    80006ecc:	02d7f5bb          	remuw	a1,a5,a3
    80006ed0:	02059593          	slli	a1,a1,0x20
    80006ed4:	0205d593          	srli	a1,a1,0x20
    80006ed8:	00bd85b3          	add	a1,s11,a1
    80006edc:	0005c583          	lbu	a1,0(a1)
    80006ee0:	02d7d7bb          	divuw	a5,a5,a3
    80006ee4:	f8b40223          	sb	a1,-124(s0)
    80006ee8:	46e57663          	bgeu	a0,a4,80007354 <__printf+0x62c>
    80006eec:	02d7f5bb          	remuw	a1,a5,a3
    80006ef0:	02059593          	slli	a1,a1,0x20
    80006ef4:	0205d593          	srli	a1,a1,0x20
    80006ef8:	00bd85b3          	add	a1,s11,a1
    80006efc:	0005c583          	lbu	a1,0(a1)
    80006f00:	02d7d7bb          	divuw	a5,a5,a3
    80006f04:	f8b402a3          	sb	a1,-123(s0)
    80006f08:	46ea7863          	bgeu	s4,a4,80007378 <__printf+0x650>
    80006f0c:	02d7f5bb          	remuw	a1,a5,a3
    80006f10:	02059593          	slli	a1,a1,0x20
    80006f14:	0205d593          	srli	a1,a1,0x20
    80006f18:	00bd85b3          	add	a1,s11,a1
    80006f1c:	0005c583          	lbu	a1,0(a1)
    80006f20:	02d7d7bb          	divuw	a5,a5,a3
    80006f24:	f8b40323          	sb	a1,-122(s0)
    80006f28:	3eeaf863          	bgeu	s5,a4,80007318 <__printf+0x5f0>
    80006f2c:	02d7f5bb          	remuw	a1,a5,a3
    80006f30:	02059593          	slli	a1,a1,0x20
    80006f34:	0205d593          	srli	a1,a1,0x20
    80006f38:	00bd85b3          	add	a1,s11,a1
    80006f3c:	0005c583          	lbu	a1,0(a1)
    80006f40:	02d7d7bb          	divuw	a5,a5,a3
    80006f44:	f8b403a3          	sb	a1,-121(s0)
    80006f48:	42eb7e63          	bgeu	s6,a4,80007384 <__printf+0x65c>
    80006f4c:	02d7f5bb          	remuw	a1,a5,a3
    80006f50:	02059593          	slli	a1,a1,0x20
    80006f54:	0205d593          	srli	a1,a1,0x20
    80006f58:	00bd85b3          	add	a1,s11,a1
    80006f5c:	0005c583          	lbu	a1,0(a1)
    80006f60:	02d7d7bb          	divuw	a5,a5,a3
    80006f64:	f8b40423          	sb	a1,-120(s0)
    80006f68:	42ebfc63          	bgeu	s7,a4,800073a0 <__printf+0x678>
    80006f6c:	02079793          	slli	a5,a5,0x20
    80006f70:	0207d793          	srli	a5,a5,0x20
    80006f74:	00fd8db3          	add	s11,s11,a5
    80006f78:	000dc703          	lbu	a4,0(s11)
    80006f7c:	00a00793          	li	a5,10
    80006f80:	00900c93          	li	s9,9
    80006f84:	f8e404a3          	sb	a4,-119(s0)
    80006f88:	00065c63          	bgez	a2,80006fa0 <__printf+0x278>
    80006f8c:	f9040713          	addi	a4,s0,-112
    80006f90:	00f70733          	add	a4,a4,a5
    80006f94:	02d00693          	li	a3,45
    80006f98:	fed70823          	sb	a3,-16(a4)
    80006f9c:	00078c93          	mv	s9,a5
    80006fa0:	f8040793          	addi	a5,s0,-128
    80006fa4:	01978cb3          	add	s9,a5,s9
    80006fa8:	f7f40d13          	addi	s10,s0,-129
    80006fac:	000cc503          	lbu	a0,0(s9)
    80006fb0:	fffc8c93          	addi	s9,s9,-1
    80006fb4:	00000097          	auipc	ra,0x0
    80006fb8:	b90080e7          	jalr	-1136(ra) # 80006b44 <consputc>
    80006fbc:	ffac98e3          	bne	s9,s10,80006fac <__printf+0x284>
    80006fc0:	00094503          	lbu	a0,0(s2)
    80006fc4:	e00514e3          	bnez	a0,80006dcc <__printf+0xa4>
    80006fc8:	1a0c1663          	bnez	s8,80007174 <__printf+0x44c>
    80006fcc:	08813083          	ld	ra,136(sp)
    80006fd0:	08013403          	ld	s0,128(sp)
    80006fd4:	07813483          	ld	s1,120(sp)
    80006fd8:	07013903          	ld	s2,112(sp)
    80006fdc:	06813983          	ld	s3,104(sp)
    80006fe0:	06013a03          	ld	s4,96(sp)
    80006fe4:	05813a83          	ld	s5,88(sp)
    80006fe8:	05013b03          	ld	s6,80(sp)
    80006fec:	04813b83          	ld	s7,72(sp)
    80006ff0:	04013c03          	ld	s8,64(sp)
    80006ff4:	03813c83          	ld	s9,56(sp)
    80006ff8:	03013d03          	ld	s10,48(sp)
    80006ffc:	02813d83          	ld	s11,40(sp)
    80007000:	0d010113          	addi	sp,sp,208
    80007004:	00008067          	ret
    80007008:	07300713          	li	a4,115
    8000700c:	1ce78a63          	beq	a5,a4,800071e0 <__printf+0x4b8>
    80007010:	07800713          	li	a4,120
    80007014:	1ee79e63          	bne	a5,a4,80007210 <__printf+0x4e8>
    80007018:	f7843783          	ld	a5,-136(s0)
    8000701c:	0007a703          	lw	a4,0(a5)
    80007020:	00878793          	addi	a5,a5,8
    80007024:	f6f43c23          	sd	a5,-136(s0)
    80007028:	28074263          	bltz	a4,800072ac <__printf+0x584>
    8000702c:	00002d97          	auipc	s11,0x2
    80007030:	5f4d8d93          	addi	s11,s11,1524 # 80009620 <digits>
    80007034:	00f77793          	andi	a5,a4,15
    80007038:	00fd87b3          	add	a5,s11,a5
    8000703c:	0007c683          	lbu	a3,0(a5)
    80007040:	00f00613          	li	a2,15
    80007044:	0007079b          	sext.w	a5,a4
    80007048:	f8d40023          	sb	a3,-128(s0)
    8000704c:	0047559b          	srliw	a1,a4,0x4
    80007050:	0047569b          	srliw	a3,a4,0x4
    80007054:	00000c93          	li	s9,0
    80007058:	0ee65063          	bge	a2,a4,80007138 <__printf+0x410>
    8000705c:	00f6f693          	andi	a3,a3,15
    80007060:	00dd86b3          	add	a3,s11,a3
    80007064:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007068:	0087d79b          	srliw	a5,a5,0x8
    8000706c:	00100c93          	li	s9,1
    80007070:	f8d400a3          	sb	a3,-127(s0)
    80007074:	0cb67263          	bgeu	a2,a1,80007138 <__printf+0x410>
    80007078:	00f7f693          	andi	a3,a5,15
    8000707c:	00dd86b3          	add	a3,s11,a3
    80007080:	0006c583          	lbu	a1,0(a3)
    80007084:	00f00613          	li	a2,15
    80007088:	0047d69b          	srliw	a3,a5,0x4
    8000708c:	f8b40123          	sb	a1,-126(s0)
    80007090:	0047d593          	srli	a1,a5,0x4
    80007094:	28f67e63          	bgeu	a2,a5,80007330 <__printf+0x608>
    80007098:	00f6f693          	andi	a3,a3,15
    8000709c:	00dd86b3          	add	a3,s11,a3
    800070a0:	0006c503          	lbu	a0,0(a3)
    800070a4:	0087d813          	srli	a6,a5,0x8
    800070a8:	0087d69b          	srliw	a3,a5,0x8
    800070ac:	f8a401a3          	sb	a0,-125(s0)
    800070b0:	28b67663          	bgeu	a2,a1,8000733c <__printf+0x614>
    800070b4:	00f6f693          	andi	a3,a3,15
    800070b8:	00dd86b3          	add	a3,s11,a3
    800070bc:	0006c583          	lbu	a1,0(a3)
    800070c0:	00c7d513          	srli	a0,a5,0xc
    800070c4:	00c7d69b          	srliw	a3,a5,0xc
    800070c8:	f8b40223          	sb	a1,-124(s0)
    800070cc:	29067a63          	bgeu	a2,a6,80007360 <__printf+0x638>
    800070d0:	00f6f693          	andi	a3,a3,15
    800070d4:	00dd86b3          	add	a3,s11,a3
    800070d8:	0006c583          	lbu	a1,0(a3)
    800070dc:	0107d813          	srli	a6,a5,0x10
    800070e0:	0107d69b          	srliw	a3,a5,0x10
    800070e4:	f8b402a3          	sb	a1,-123(s0)
    800070e8:	28a67263          	bgeu	a2,a0,8000736c <__printf+0x644>
    800070ec:	00f6f693          	andi	a3,a3,15
    800070f0:	00dd86b3          	add	a3,s11,a3
    800070f4:	0006c683          	lbu	a3,0(a3)
    800070f8:	0147d79b          	srliw	a5,a5,0x14
    800070fc:	f8d40323          	sb	a3,-122(s0)
    80007100:	21067663          	bgeu	a2,a6,8000730c <__printf+0x5e4>
    80007104:	02079793          	slli	a5,a5,0x20
    80007108:	0207d793          	srli	a5,a5,0x20
    8000710c:	00fd8db3          	add	s11,s11,a5
    80007110:	000dc683          	lbu	a3,0(s11)
    80007114:	00800793          	li	a5,8
    80007118:	00700c93          	li	s9,7
    8000711c:	f8d403a3          	sb	a3,-121(s0)
    80007120:	00075c63          	bgez	a4,80007138 <__printf+0x410>
    80007124:	f9040713          	addi	a4,s0,-112
    80007128:	00f70733          	add	a4,a4,a5
    8000712c:	02d00693          	li	a3,45
    80007130:	fed70823          	sb	a3,-16(a4)
    80007134:	00078c93          	mv	s9,a5
    80007138:	f8040793          	addi	a5,s0,-128
    8000713c:	01978cb3          	add	s9,a5,s9
    80007140:	f7f40d13          	addi	s10,s0,-129
    80007144:	000cc503          	lbu	a0,0(s9)
    80007148:	fffc8c93          	addi	s9,s9,-1
    8000714c:	00000097          	auipc	ra,0x0
    80007150:	9f8080e7          	jalr	-1544(ra) # 80006b44 <consputc>
    80007154:	ff9d18e3          	bne	s10,s9,80007144 <__printf+0x41c>
    80007158:	0100006f          	j	80007168 <__printf+0x440>
    8000715c:	00000097          	auipc	ra,0x0
    80007160:	9e8080e7          	jalr	-1560(ra) # 80006b44 <consputc>
    80007164:	000c8493          	mv	s1,s9
    80007168:	00094503          	lbu	a0,0(s2)
    8000716c:	c60510e3          	bnez	a0,80006dcc <__printf+0xa4>
    80007170:	e40c0ee3          	beqz	s8,80006fcc <__printf+0x2a4>
    80007174:	0000a517          	auipc	a0,0xa
    80007178:	a8c50513          	addi	a0,a0,-1396 # 80010c00 <pr>
    8000717c:	00001097          	auipc	ra,0x1
    80007180:	94c080e7          	jalr	-1716(ra) # 80007ac8 <release>
    80007184:	e49ff06f          	j	80006fcc <__printf+0x2a4>
    80007188:	f7843783          	ld	a5,-136(s0)
    8000718c:	03000513          	li	a0,48
    80007190:	01000d13          	li	s10,16
    80007194:	00878713          	addi	a4,a5,8
    80007198:	0007bc83          	ld	s9,0(a5)
    8000719c:	f6e43c23          	sd	a4,-136(s0)
    800071a0:	00000097          	auipc	ra,0x0
    800071a4:	9a4080e7          	jalr	-1628(ra) # 80006b44 <consputc>
    800071a8:	07800513          	li	a0,120
    800071ac:	00000097          	auipc	ra,0x0
    800071b0:	998080e7          	jalr	-1640(ra) # 80006b44 <consputc>
    800071b4:	00002d97          	auipc	s11,0x2
    800071b8:	46cd8d93          	addi	s11,s11,1132 # 80009620 <digits>
    800071bc:	03ccd793          	srli	a5,s9,0x3c
    800071c0:	00fd87b3          	add	a5,s11,a5
    800071c4:	0007c503          	lbu	a0,0(a5)
    800071c8:	fffd0d1b          	addiw	s10,s10,-1
    800071cc:	004c9c93          	slli	s9,s9,0x4
    800071d0:	00000097          	auipc	ra,0x0
    800071d4:	974080e7          	jalr	-1676(ra) # 80006b44 <consputc>
    800071d8:	fe0d12e3          	bnez	s10,800071bc <__printf+0x494>
    800071dc:	f8dff06f          	j	80007168 <__printf+0x440>
    800071e0:	f7843783          	ld	a5,-136(s0)
    800071e4:	0007bc83          	ld	s9,0(a5)
    800071e8:	00878793          	addi	a5,a5,8
    800071ec:	f6f43c23          	sd	a5,-136(s0)
    800071f0:	000c9a63          	bnez	s9,80007204 <__printf+0x4dc>
    800071f4:	1080006f          	j	800072fc <__printf+0x5d4>
    800071f8:	001c8c93          	addi	s9,s9,1
    800071fc:	00000097          	auipc	ra,0x0
    80007200:	948080e7          	jalr	-1720(ra) # 80006b44 <consputc>
    80007204:	000cc503          	lbu	a0,0(s9)
    80007208:	fe0518e3          	bnez	a0,800071f8 <__printf+0x4d0>
    8000720c:	f5dff06f          	j	80007168 <__printf+0x440>
    80007210:	02500513          	li	a0,37
    80007214:	00000097          	auipc	ra,0x0
    80007218:	930080e7          	jalr	-1744(ra) # 80006b44 <consputc>
    8000721c:	000c8513          	mv	a0,s9
    80007220:	00000097          	auipc	ra,0x0
    80007224:	924080e7          	jalr	-1756(ra) # 80006b44 <consputc>
    80007228:	f41ff06f          	j	80007168 <__printf+0x440>
    8000722c:	02500513          	li	a0,37
    80007230:	00000097          	auipc	ra,0x0
    80007234:	914080e7          	jalr	-1772(ra) # 80006b44 <consputc>
    80007238:	f31ff06f          	j	80007168 <__printf+0x440>
    8000723c:	00030513          	mv	a0,t1
    80007240:	00000097          	auipc	ra,0x0
    80007244:	7bc080e7          	jalr	1980(ra) # 800079fc <acquire>
    80007248:	b4dff06f          	j	80006d94 <__printf+0x6c>
    8000724c:	40c0053b          	negw	a0,a2
    80007250:	00a00713          	li	a4,10
    80007254:	02e576bb          	remuw	a3,a0,a4
    80007258:	00002d97          	auipc	s11,0x2
    8000725c:	3c8d8d93          	addi	s11,s11,968 # 80009620 <digits>
    80007260:	ff700593          	li	a1,-9
    80007264:	02069693          	slli	a3,a3,0x20
    80007268:	0206d693          	srli	a3,a3,0x20
    8000726c:	00dd86b3          	add	a3,s11,a3
    80007270:	0006c683          	lbu	a3,0(a3)
    80007274:	02e557bb          	divuw	a5,a0,a4
    80007278:	f8d40023          	sb	a3,-128(s0)
    8000727c:	10b65e63          	bge	a2,a1,80007398 <__printf+0x670>
    80007280:	06300593          	li	a1,99
    80007284:	02e7f6bb          	remuw	a3,a5,a4
    80007288:	02069693          	slli	a3,a3,0x20
    8000728c:	0206d693          	srli	a3,a3,0x20
    80007290:	00dd86b3          	add	a3,s11,a3
    80007294:	0006c683          	lbu	a3,0(a3)
    80007298:	02e7d73b          	divuw	a4,a5,a4
    8000729c:	00200793          	li	a5,2
    800072a0:	f8d400a3          	sb	a3,-127(s0)
    800072a4:	bca5ece3          	bltu	a1,a0,80006e7c <__printf+0x154>
    800072a8:	ce5ff06f          	j	80006f8c <__printf+0x264>
    800072ac:	40e007bb          	negw	a5,a4
    800072b0:	00002d97          	auipc	s11,0x2
    800072b4:	370d8d93          	addi	s11,s11,880 # 80009620 <digits>
    800072b8:	00f7f693          	andi	a3,a5,15
    800072bc:	00dd86b3          	add	a3,s11,a3
    800072c0:	0006c583          	lbu	a1,0(a3)
    800072c4:	ff100613          	li	a2,-15
    800072c8:	0047d69b          	srliw	a3,a5,0x4
    800072cc:	f8b40023          	sb	a1,-128(s0)
    800072d0:	0047d59b          	srliw	a1,a5,0x4
    800072d4:	0ac75e63          	bge	a4,a2,80007390 <__printf+0x668>
    800072d8:	00f6f693          	andi	a3,a3,15
    800072dc:	00dd86b3          	add	a3,s11,a3
    800072e0:	0006c603          	lbu	a2,0(a3)
    800072e4:	00f00693          	li	a3,15
    800072e8:	0087d79b          	srliw	a5,a5,0x8
    800072ec:	f8c400a3          	sb	a2,-127(s0)
    800072f0:	d8b6e4e3          	bltu	a3,a1,80007078 <__printf+0x350>
    800072f4:	00200793          	li	a5,2
    800072f8:	e2dff06f          	j	80007124 <__printf+0x3fc>
    800072fc:	00002c97          	auipc	s9,0x2
    80007300:	304c8c93          	addi	s9,s9,772 # 80009600 <CONSOLE_STATUS+0x5f0>
    80007304:	02800513          	li	a0,40
    80007308:	ef1ff06f          	j	800071f8 <__printf+0x4d0>
    8000730c:	00700793          	li	a5,7
    80007310:	00600c93          	li	s9,6
    80007314:	e0dff06f          	j	80007120 <__printf+0x3f8>
    80007318:	00700793          	li	a5,7
    8000731c:	00600c93          	li	s9,6
    80007320:	c69ff06f          	j	80006f88 <__printf+0x260>
    80007324:	00300793          	li	a5,3
    80007328:	00200c93          	li	s9,2
    8000732c:	c5dff06f          	j	80006f88 <__printf+0x260>
    80007330:	00300793          	li	a5,3
    80007334:	00200c93          	li	s9,2
    80007338:	de9ff06f          	j	80007120 <__printf+0x3f8>
    8000733c:	00400793          	li	a5,4
    80007340:	00300c93          	li	s9,3
    80007344:	dddff06f          	j	80007120 <__printf+0x3f8>
    80007348:	00400793          	li	a5,4
    8000734c:	00300c93          	li	s9,3
    80007350:	c39ff06f          	j	80006f88 <__printf+0x260>
    80007354:	00500793          	li	a5,5
    80007358:	00400c93          	li	s9,4
    8000735c:	c2dff06f          	j	80006f88 <__printf+0x260>
    80007360:	00500793          	li	a5,5
    80007364:	00400c93          	li	s9,4
    80007368:	db9ff06f          	j	80007120 <__printf+0x3f8>
    8000736c:	00600793          	li	a5,6
    80007370:	00500c93          	li	s9,5
    80007374:	dadff06f          	j	80007120 <__printf+0x3f8>
    80007378:	00600793          	li	a5,6
    8000737c:	00500c93          	li	s9,5
    80007380:	c09ff06f          	j	80006f88 <__printf+0x260>
    80007384:	00800793          	li	a5,8
    80007388:	00700c93          	li	s9,7
    8000738c:	bfdff06f          	j	80006f88 <__printf+0x260>
    80007390:	00100793          	li	a5,1
    80007394:	d91ff06f          	j	80007124 <__printf+0x3fc>
    80007398:	00100793          	li	a5,1
    8000739c:	bf1ff06f          	j	80006f8c <__printf+0x264>
    800073a0:	00900793          	li	a5,9
    800073a4:	00800c93          	li	s9,8
    800073a8:	be1ff06f          	j	80006f88 <__printf+0x260>
    800073ac:	00002517          	auipc	a0,0x2
    800073b0:	25c50513          	addi	a0,a0,604 # 80009608 <CONSOLE_STATUS+0x5f8>
    800073b4:	00000097          	auipc	ra,0x0
    800073b8:	918080e7          	jalr	-1768(ra) # 80006ccc <panic>

00000000800073bc <printfinit>:
    800073bc:	fe010113          	addi	sp,sp,-32
    800073c0:	00813823          	sd	s0,16(sp)
    800073c4:	00913423          	sd	s1,8(sp)
    800073c8:	00113c23          	sd	ra,24(sp)
    800073cc:	02010413          	addi	s0,sp,32
    800073d0:	0000a497          	auipc	s1,0xa
    800073d4:	83048493          	addi	s1,s1,-2000 # 80010c00 <pr>
    800073d8:	00048513          	mv	a0,s1
    800073dc:	00002597          	auipc	a1,0x2
    800073e0:	23c58593          	addi	a1,a1,572 # 80009618 <CONSOLE_STATUS+0x608>
    800073e4:	00000097          	auipc	ra,0x0
    800073e8:	5f4080e7          	jalr	1524(ra) # 800079d8 <initlock>
    800073ec:	01813083          	ld	ra,24(sp)
    800073f0:	01013403          	ld	s0,16(sp)
    800073f4:	0004ac23          	sw	zero,24(s1)
    800073f8:	00813483          	ld	s1,8(sp)
    800073fc:	02010113          	addi	sp,sp,32
    80007400:	00008067          	ret

0000000080007404 <uartinit>:
    80007404:	ff010113          	addi	sp,sp,-16
    80007408:	00813423          	sd	s0,8(sp)
    8000740c:	01010413          	addi	s0,sp,16
    80007410:	100007b7          	lui	a5,0x10000
    80007414:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007418:	f8000713          	li	a4,-128
    8000741c:	00e781a3          	sb	a4,3(a5)
    80007420:	00300713          	li	a4,3
    80007424:	00e78023          	sb	a4,0(a5)
    80007428:	000780a3          	sb	zero,1(a5)
    8000742c:	00e781a3          	sb	a4,3(a5)
    80007430:	00700693          	li	a3,7
    80007434:	00d78123          	sb	a3,2(a5)
    80007438:	00e780a3          	sb	a4,1(a5)
    8000743c:	00813403          	ld	s0,8(sp)
    80007440:	01010113          	addi	sp,sp,16
    80007444:	00008067          	ret

0000000080007448 <uartputc>:
    80007448:	00004797          	auipc	a5,0x4
    8000744c:	4a07a783          	lw	a5,1184(a5) # 8000b8e8 <panicked>
    80007450:	00078463          	beqz	a5,80007458 <uartputc+0x10>
    80007454:	0000006f          	j	80007454 <uartputc+0xc>
    80007458:	fd010113          	addi	sp,sp,-48
    8000745c:	02813023          	sd	s0,32(sp)
    80007460:	00913c23          	sd	s1,24(sp)
    80007464:	01213823          	sd	s2,16(sp)
    80007468:	01313423          	sd	s3,8(sp)
    8000746c:	02113423          	sd	ra,40(sp)
    80007470:	03010413          	addi	s0,sp,48
    80007474:	00004917          	auipc	s2,0x4
    80007478:	47c90913          	addi	s2,s2,1148 # 8000b8f0 <uart_tx_r>
    8000747c:	00093783          	ld	a5,0(s2)
    80007480:	00004497          	auipc	s1,0x4
    80007484:	47848493          	addi	s1,s1,1144 # 8000b8f8 <uart_tx_w>
    80007488:	0004b703          	ld	a4,0(s1)
    8000748c:	02078693          	addi	a3,a5,32
    80007490:	00050993          	mv	s3,a0
    80007494:	02e69c63          	bne	a3,a4,800074cc <uartputc+0x84>
    80007498:	00001097          	auipc	ra,0x1
    8000749c:	834080e7          	jalr	-1996(ra) # 80007ccc <push_on>
    800074a0:	00093783          	ld	a5,0(s2)
    800074a4:	0004b703          	ld	a4,0(s1)
    800074a8:	02078793          	addi	a5,a5,32
    800074ac:	00e79463          	bne	a5,a4,800074b4 <uartputc+0x6c>
    800074b0:	0000006f          	j	800074b0 <uartputc+0x68>
    800074b4:	00001097          	auipc	ra,0x1
    800074b8:	88c080e7          	jalr	-1908(ra) # 80007d40 <pop_on>
    800074bc:	00093783          	ld	a5,0(s2)
    800074c0:	0004b703          	ld	a4,0(s1)
    800074c4:	02078693          	addi	a3,a5,32
    800074c8:	fce688e3          	beq	a3,a4,80007498 <uartputc+0x50>
    800074cc:	01f77693          	andi	a3,a4,31
    800074d0:	00009597          	auipc	a1,0x9
    800074d4:	75058593          	addi	a1,a1,1872 # 80010c20 <uart_tx_buf>
    800074d8:	00d586b3          	add	a3,a1,a3
    800074dc:	00170713          	addi	a4,a4,1
    800074e0:	01368023          	sb	s3,0(a3)
    800074e4:	00e4b023          	sd	a4,0(s1)
    800074e8:	10000637          	lui	a2,0x10000
    800074ec:	02f71063          	bne	a4,a5,8000750c <uartputc+0xc4>
    800074f0:	0340006f          	j	80007524 <uartputc+0xdc>
    800074f4:	00074703          	lbu	a4,0(a4)
    800074f8:	00f93023          	sd	a5,0(s2)
    800074fc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007500:	00093783          	ld	a5,0(s2)
    80007504:	0004b703          	ld	a4,0(s1)
    80007508:	00f70e63          	beq	a4,a5,80007524 <uartputc+0xdc>
    8000750c:	00564683          	lbu	a3,5(a2)
    80007510:	01f7f713          	andi	a4,a5,31
    80007514:	00e58733          	add	a4,a1,a4
    80007518:	0206f693          	andi	a3,a3,32
    8000751c:	00178793          	addi	a5,a5,1
    80007520:	fc069ae3          	bnez	a3,800074f4 <uartputc+0xac>
    80007524:	02813083          	ld	ra,40(sp)
    80007528:	02013403          	ld	s0,32(sp)
    8000752c:	01813483          	ld	s1,24(sp)
    80007530:	01013903          	ld	s2,16(sp)
    80007534:	00813983          	ld	s3,8(sp)
    80007538:	03010113          	addi	sp,sp,48
    8000753c:	00008067          	ret

0000000080007540 <uartputc_sync>:
    80007540:	ff010113          	addi	sp,sp,-16
    80007544:	00813423          	sd	s0,8(sp)
    80007548:	01010413          	addi	s0,sp,16
    8000754c:	00004717          	auipc	a4,0x4
    80007550:	39c72703          	lw	a4,924(a4) # 8000b8e8 <panicked>
    80007554:	02071663          	bnez	a4,80007580 <uartputc_sync+0x40>
    80007558:	00050793          	mv	a5,a0
    8000755c:	100006b7          	lui	a3,0x10000
    80007560:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007564:	02077713          	andi	a4,a4,32
    80007568:	fe070ce3          	beqz	a4,80007560 <uartputc_sync+0x20>
    8000756c:	0ff7f793          	andi	a5,a5,255
    80007570:	00f68023          	sb	a5,0(a3)
    80007574:	00813403          	ld	s0,8(sp)
    80007578:	01010113          	addi	sp,sp,16
    8000757c:	00008067          	ret
    80007580:	0000006f          	j	80007580 <uartputc_sync+0x40>

0000000080007584 <uartstart>:
    80007584:	ff010113          	addi	sp,sp,-16
    80007588:	00813423          	sd	s0,8(sp)
    8000758c:	01010413          	addi	s0,sp,16
    80007590:	00004617          	auipc	a2,0x4
    80007594:	36060613          	addi	a2,a2,864 # 8000b8f0 <uart_tx_r>
    80007598:	00004517          	auipc	a0,0x4
    8000759c:	36050513          	addi	a0,a0,864 # 8000b8f8 <uart_tx_w>
    800075a0:	00063783          	ld	a5,0(a2)
    800075a4:	00053703          	ld	a4,0(a0)
    800075a8:	04f70263          	beq	a4,a5,800075ec <uartstart+0x68>
    800075ac:	100005b7          	lui	a1,0x10000
    800075b0:	00009817          	auipc	a6,0x9
    800075b4:	67080813          	addi	a6,a6,1648 # 80010c20 <uart_tx_buf>
    800075b8:	01c0006f          	j	800075d4 <uartstart+0x50>
    800075bc:	0006c703          	lbu	a4,0(a3)
    800075c0:	00f63023          	sd	a5,0(a2)
    800075c4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800075c8:	00063783          	ld	a5,0(a2)
    800075cc:	00053703          	ld	a4,0(a0)
    800075d0:	00f70e63          	beq	a4,a5,800075ec <uartstart+0x68>
    800075d4:	01f7f713          	andi	a4,a5,31
    800075d8:	00e806b3          	add	a3,a6,a4
    800075dc:	0055c703          	lbu	a4,5(a1)
    800075e0:	00178793          	addi	a5,a5,1
    800075e4:	02077713          	andi	a4,a4,32
    800075e8:	fc071ae3          	bnez	a4,800075bc <uartstart+0x38>
    800075ec:	00813403          	ld	s0,8(sp)
    800075f0:	01010113          	addi	sp,sp,16
    800075f4:	00008067          	ret

00000000800075f8 <uartgetc>:
    800075f8:	ff010113          	addi	sp,sp,-16
    800075fc:	00813423          	sd	s0,8(sp)
    80007600:	01010413          	addi	s0,sp,16
    80007604:	10000737          	lui	a4,0x10000
    80007608:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000760c:	0017f793          	andi	a5,a5,1
    80007610:	00078c63          	beqz	a5,80007628 <uartgetc+0x30>
    80007614:	00074503          	lbu	a0,0(a4)
    80007618:	0ff57513          	andi	a0,a0,255
    8000761c:	00813403          	ld	s0,8(sp)
    80007620:	01010113          	addi	sp,sp,16
    80007624:	00008067          	ret
    80007628:	fff00513          	li	a0,-1
    8000762c:	ff1ff06f          	j	8000761c <uartgetc+0x24>

0000000080007630 <uartintr>:
    80007630:	100007b7          	lui	a5,0x10000
    80007634:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007638:	0017f793          	andi	a5,a5,1
    8000763c:	0a078463          	beqz	a5,800076e4 <uartintr+0xb4>
    80007640:	fe010113          	addi	sp,sp,-32
    80007644:	00813823          	sd	s0,16(sp)
    80007648:	00913423          	sd	s1,8(sp)
    8000764c:	00113c23          	sd	ra,24(sp)
    80007650:	02010413          	addi	s0,sp,32
    80007654:	100004b7          	lui	s1,0x10000
    80007658:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000765c:	0ff57513          	andi	a0,a0,255
    80007660:	fffff097          	auipc	ra,0xfffff
    80007664:	534080e7          	jalr	1332(ra) # 80006b94 <consoleintr>
    80007668:	0054c783          	lbu	a5,5(s1)
    8000766c:	0017f793          	andi	a5,a5,1
    80007670:	fe0794e3          	bnez	a5,80007658 <uartintr+0x28>
    80007674:	00004617          	auipc	a2,0x4
    80007678:	27c60613          	addi	a2,a2,636 # 8000b8f0 <uart_tx_r>
    8000767c:	00004517          	auipc	a0,0x4
    80007680:	27c50513          	addi	a0,a0,636 # 8000b8f8 <uart_tx_w>
    80007684:	00063783          	ld	a5,0(a2)
    80007688:	00053703          	ld	a4,0(a0)
    8000768c:	04f70263          	beq	a4,a5,800076d0 <uartintr+0xa0>
    80007690:	100005b7          	lui	a1,0x10000
    80007694:	00009817          	auipc	a6,0x9
    80007698:	58c80813          	addi	a6,a6,1420 # 80010c20 <uart_tx_buf>
    8000769c:	01c0006f          	j	800076b8 <uartintr+0x88>
    800076a0:	0006c703          	lbu	a4,0(a3)
    800076a4:	00f63023          	sd	a5,0(a2)
    800076a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800076ac:	00063783          	ld	a5,0(a2)
    800076b0:	00053703          	ld	a4,0(a0)
    800076b4:	00f70e63          	beq	a4,a5,800076d0 <uartintr+0xa0>
    800076b8:	01f7f713          	andi	a4,a5,31
    800076bc:	00e806b3          	add	a3,a6,a4
    800076c0:	0055c703          	lbu	a4,5(a1)
    800076c4:	00178793          	addi	a5,a5,1
    800076c8:	02077713          	andi	a4,a4,32
    800076cc:	fc071ae3          	bnez	a4,800076a0 <uartintr+0x70>
    800076d0:	01813083          	ld	ra,24(sp)
    800076d4:	01013403          	ld	s0,16(sp)
    800076d8:	00813483          	ld	s1,8(sp)
    800076dc:	02010113          	addi	sp,sp,32
    800076e0:	00008067          	ret
    800076e4:	00004617          	auipc	a2,0x4
    800076e8:	20c60613          	addi	a2,a2,524 # 8000b8f0 <uart_tx_r>
    800076ec:	00004517          	auipc	a0,0x4
    800076f0:	20c50513          	addi	a0,a0,524 # 8000b8f8 <uart_tx_w>
    800076f4:	00063783          	ld	a5,0(a2)
    800076f8:	00053703          	ld	a4,0(a0)
    800076fc:	04f70263          	beq	a4,a5,80007740 <uartintr+0x110>
    80007700:	100005b7          	lui	a1,0x10000
    80007704:	00009817          	auipc	a6,0x9
    80007708:	51c80813          	addi	a6,a6,1308 # 80010c20 <uart_tx_buf>
    8000770c:	01c0006f          	j	80007728 <uartintr+0xf8>
    80007710:	0006c703          	lbu	a4,0(a3)
    80007714:	00f63023          	sd	a5,0(a2)
    80007718:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000771c:	00063783          	ld	a5,0(a2)
    80007720:	00053703          	ld	a4,0(a0)
    80007724:	02f70063          	beq	a4,a5,80007744 <uartintr+0x114>
    80007728:	01f7f713          	andi	a4,a5,31
    8000772c:	00e806b3          	add	a3,a6,a4
    80007730:	0055c703          	lbu	a4,5(a1)
    80007734:	00178793          	addi	a5,a5,1
    80007738:	02077713          	andi	a4,a4,32
    8000773c:	fc071ae3          	bnez	a4,80007710 <uartintr+0xe0>
    80007740:	00008067          	ret
    80007744:	00008067          	ret

0000000080007748 <kinit>:
    80007748:	fc010113          	addi	sp,sp,-64
    8000774c:	02913423          	sd	s1,40(sp)
    80007750:	fffff7b7          	lui	a5,0xfffff
    80007754:	0000a497          	auipc	s1,0xa
    80007758:	4eb48493          	addi	s1,s1,1259 # 80011c3f <end+0xfff>
    8000775c:	02813823          	sd	s0,48(sp)
    80007760:	01313c23          	sd	s3,24(sp)
    80007764:	00f4f4b3          	and	s1,s1,a5
    80007768:	02113c23          	sd	ra,56(sp)
    8000776c:	03213023          	sd	s2,32(sp)
    80007770:	01413823          	sd	s4,16(sp)
    80007774:	01513423          	sd	s5,8(sp)
    80007778:	04010413          	addi	s0,sp,64
    8000777c:	000017b7          	lui	a5,0x1
    80007780:	01100993          	li	s3,17
    80007784:	00f487b3          	add	a5,s1,a5
    80007788:	01b99993          	slli	s3,s3,0x1b
    8000778c:	06f9e063          	bltu	s3,a5,800077ec <kinit+0xa4>
    80007790:	00009a97          	auipc	s5,0x9
    80007794:	4b0a8a93          	addi	s5,s5,1200 # 80010c40 <end>
    80007798:	0754ec63          	bltu	s1,s5,80007810 <kinit+0xc8>
    8000779c:	0734fa63          	bgeu	s1,s3,80007810 <kinit+0xc8>
    800077a0:	00088a37          	lui	s4,0x88
    800077a4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800077a8:	00004917          	auipc	s2,0x4
    800077ac:	15890913          	addi	s2,s2,344 # 8000b900 <kmem>
    800077b0:	00ca1a13          	slli	s4,s4,0xc
    800077b4:	0140006f          	j	800077c8 <kinit+0x80>
    800077b8:	000017b7          	lui	a5,0x1
    800077bc:	00f484b3          	add	s1,s1,a5
    800077c0:	0554e863          	bltu	s1,s5,80007810 <kinit+0xc8>
    800077c4:	0534f663          	bgeu	s1,s3,80007810 <kinit+0xc8>
    800077c8:	00001637          	lui	a2,0x1
    800077cc:	00100593          	li	a1,1
    800077d0:	00048513          	mv	a0,s1
    800077d4:	00000097          	auipc	ra,0x0
    800077d8:	5e4080e7          	jalr	1508(ra) # 80007db8 <__memset>
    800077dc:	00093783          	ld	a5,0(s2)
    800077e0:	00f4b023          	sd	a5,0(s1)
    800077e4:	00993023          	sd	s1,0(s2)
    800077e8:	fd4498e3          	bne	s1,s4,800077b8 <kinit+0x70>
    800077ec:	03813083          	ld	ra,56(sp)
    800077f0:	03013403          	ld	s0,48(sp)
    800077f4:	02813483          	ld	s1,40(sp)
    800077f8:	02013903          	ld	s2,32(sp)
    800077fc:	01813983          	ld	s3,24(sp)
    80007800:	01013a03          	ld	s4,16(sp)
    80007804:	00813a83          	ld	s5,8(sp)
    80007808:	04010113          	addi	sp,sp,64
    8000780c:	00008067          	ret
    80007810:	00002517          	auipc	a0,0x2
    80007814:	e2850513          	addi	a0,a0,-472 # 80009638 <digits+0x18>
    80007818:	fffff097          	auipc	ra,0xfffff
    8000781c:	4b4080e7          	jalr	1204(ra) # 80006ccc <panic>

0000000080007820 <freerange>:
    80007820:	fc010113          	addi	sp,sp,-64
    80007824:	000017b7          	lui	a5,0x1
    80007828:	02913423          	sd	s1,40(sp)
    8000782c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007830:	009504b3          	add	s1,a0,s1
    80007834:	fffff537          	lui	a0,0xfffff
    80007838:	02813823          	sd	s0,48(sp)
    8000783c:	02113c23          	sd	ra,56(sp)
    80007840:	03213023          	sd	s2,32(sp)
    80007844:	01313c23          	sd	s3,24(sp)
    80007848:	01413823          	sd	s4,16(sp)
    8000784c:	01513423          	sd	s5,8(sp)
    80007850:	01613023          	sd	s6,0(sp)
    80007854:	04010413          	addi	s0,sp,64
    80007858:	00a4f4b3          	and	s1,s1,a0
    8000785c:	00f487b3          	add	a5,s1,a5
    80007860:	06f5e463          	bltu	a1,a5,800078c8 <freerange+0xa8>
    80007864:	00009a97          	auipc	s5,0x9
    80007868:	3dca8a93          	addi	s5,s5,988 # 80010c40 <end>
    8000786c:	0954e263          	bltu	s1,s5,800078f0 <freerange+0xd0>
    80007870:	01100993          	li	s3,17
    80007874:	01b99993          	slli	s3,s3,0x1b
    80007878:	0734fc63          	bgeu	s1,s3,800078f0 <freerange+0xd0>
    8000787c:	00058a13          	mv	s4,a1
    80007880:	00004917          	auipc	s2,0x4
    80007884:	08090913          	addi	s2,s2,128 # 8000b900 <kmem>
    80007888:	00002b37          	lui	s6,0x2
    8000788c:	0140006f          	j	800078a0 <freerange+0x80>
    80007890:	000017b7          	lui	a5,0x1
    80007894:	00f484b3          	add	s1,s1,a5
    80007898:	0554ec63          	bltu	s1,s5,800078f0 <freerange+0xd0>
    8000789c:	0534fa63          	bgeu	s1,s3,800078f0 <freerange+0xd0>
    800078a0:	00001637          	lui	a2,0x1
    800078a4:	00100593          	li	a1,1
    800078a8:	00048513          	mv	a0,s1
    800078ac:	00000097          	auipc	ra,0x0
    800078b0:	50c080e7          	jalr	1292(ra) # 80007db8 <__memset>
    800078b4:	00093703          	ld	a4,0(s2)
    800078b8:	016487b3          	add	a5,s1,s6
    800078bc:	00e4b023          	sd	a4,0(s1)
    800078c0:	00993023          	sd	s1,0(s2)
    800078c4:	fcfa76e3          	bgeu	s4,a5,80007890 <freerange+0x70>
    800078c8:	03813083          	ld	ra,56(sp)
    800078cc:	03013403          	ld	s0,48(sp)
    800078d0:	02813483          	ld	s1,40(sp)
    800078d4:	02013903          	ld	s2,32(sp)
    800078d8:	01813983          	ld	s3,24(sp)
    800078dc:	01013a03          	ld	s4,16(sp)
    800078e0:	00813a83          	ld	s5,8(sp)
    800078e4:	00013b03          	ld	s6,0(sp)
    800078e8:	04010113          	addi	sp,sp,64
    800078ec:	00008067          	ret
    800078f0:	00002517          	auipc	a0,0x2
    800078f4:	d4850513          	addi	a0,a0,-696 # 80009638 <digits+0x18>
    800078f8:	fffff097          	auipc	ra,0xfffff
    800078fc:	3d4080e7          	jalr	980(ra) # 80006ccc <panic>

0000000080007900 <kfree>:
    80007900:	fe010113          	addi	sp,sp,-32
    80007904:	00813823          	sd	s0,16(sp)
    80007908:	00113c23          	sd	ra,24(sp)
    8000790c:	00913423          	sd	s1,8(sp)
    80007910:	02010413          	addi	s0,sp,32
    80007914:	03451793          	slli	a5,a0,0x34
    80007918:	04079c63          	bnez	a5,80007970 <kfree+0x70>
    8000791c:	00009797          	auipc	a5,0x9
    80007920:	32478793          	addi	a5,a5,804 # 80010c40 <end>
    80007924:	00050493          	mv	s1,a0
    80007928:	04f56463          	bltu	a0,a5,80007970 <kfree+0x70>
    8000792c:	01100793          	li	a5,17
    80007930:	01b79793          	slli	a5,a5,0x1b
    80007934:	02f57e63          	bgeu	a0,a5,80007970 <kfree+0x70>
    80007938:	00001637          	lui	a2,0x1
    8000793c:	00100593          	li	a1,1
    80007940:	00000097          	auipc	ra,0x0
    80007944:	478080e7          	jalr	1144(ra) # 80007db8 <__memset>
    80007948:	00004797          	auipc	a5,0x4
    8000794c:	fb878793          	addi	a5,a5,-72 # 8000b900 <kmem>
    80007950:	0007b703          	ld	a4,0(a5)
    80007954:	01813083          	ld	ra,24(sp)
    80007958:	01013403          	ld	s0,16(sp)
    8000795c:	00e4b023          	sd	a4,0(s1)
    80007960:	0097b023          	sd	s1,0(a5)
    80007964:	00813483          	ld	s1,8(sp)
    80007968:	02010113          	addi	sp,sp,32
    8000796c:	00008067          	ret
    80007970:	00002517          	auipc	a0,0x2
    80007974:	cc850513          	addi	a0,a0,-824 # 80009638 <digits+0x18>
    80007978:	fffff097          	auipc	ra,0xfffff
    8000797c:	354080e7          	jalr	852(ra) # 80006ccc <panic>

0000000080007980 <kalloc>:
    80007980:	fe010113          	addi	sp,sp,-32
    80007984:	00813823          	sd	s0,16(sp)
    80007988:	00913423          	sd	s1,8(sp)
    8000798c:	00113c23          	sd	ra,24(sp)
    80007990:	02010413          	addi	s0,sp,32
    80007994:	00004797          	auipc	a5,0x4
    80007998:	f6c78793          	addi	a5,a5,-148 # 8000b900 <kmem>
    8000799c:	0007b483          	ld	s1,0(a5)
    800079a0:	02048063          	beqz	s1,800079c0 <kalloc+0x40>
    800079a4:	0004b703          	ld	a4,0(s1)
    800079a8:	00001637          	lui	a2,0x1
    800079ac:	00500593          	li	a1,5
    800079b0:	00048513          	mv	a0,s1
    800079b4:	00e7b023          	sd	a4,0(a5)
    800079b8:	00000097          	auipc	ra,0x0
    800079bc:	400080e7          	jalr	1024(ra) # 80007db8 <__memset>
    800079c0:	01813083          	ld	ra,24(sp)
    800079c4:	01013403          	ld	s0,16(sp)
    800079c8:	00048513          	mv	a0,s1
    800079cc:	00813483          	ld	s1,8(sp)
    800079d0:	02010113          	addi	sp,sp,32
    800079d4:	00008067          	ret

00000000800079d8 <initlock>:
    800079d8:	ff010113          	addi	sp,sp,-16
    800079dc:	00813423          	sd	s0,8(sp)
    800079e0:	01010413          	addi	s0,sp,16
    800079e4:	00813403          	ld	s0,8(sp)
    800079e8:	00b53423          	sd	a1,8(a0)
    800079ec:	00052023          	sw	zero,0(a0)
    800079f0:	00053823          	sd	zero,16(a0)
    800079f4:	01010113          	addi	sp,sp,16
    800079f8:	00008067          	ret

00000000800079fc <acquire>:
    800079fc:	fe010113          	addi	sp,sp,-32
    80007a00:	00813823          	sd	s0,16(sp)
    80007a04:	00913423          	sd	s1,8(sp)
    80007a08:	00113c23          	sd	ra,24(sp)
    80007a0c:	01213023          	sd	s2,0(sp)
    80007a10:	02010413          	addi	s0,sp,32
    80007a14:	00050493          	mv	s1,a0
    80007a18:	10002973          	csrr	s2,sstatus
    80007a1c:	100027f3          	csrr	a5,sstatus
    80007a20:	ffd7f793          	andi	a5,a5,-3
    80007a24:	10079073          	csrw	sstatus,a5
    80007a28:	fffff097          	auipc	ra,0xfffff
    80007a2c:	8ec080e7          	jalr	-1812(ra) # 80006314 <mycpu>
    80007a30:	07852783          	lw	a5,120(a0)
    80007a34:	06078e63          	beqz	a5,80007ab0 <acquire+0xb4>
    80007a38:	fffff097          	auipc	ra,0xfffff
    80007a3c:	8dc080e7          	jalr	-1828(ra) # 80006314 <mycpu>
    80007a40:	07852783          	lw	a5,120(a0)
    80007a44:	0004a703          	lw	a4,0(s1)
    80007a48:	0017879b          	addiw	a5,a5,1
    80007a4c:	06f52c23          	sw	a5,120(a0)
    80007a50:	04071063          	bnez	a4,80007a90 <acquire+0x94>
    80007a54:	00100713          	li	a4,1
    80007a58:	00070793          	mv	a5,a4
    80007a5c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007a60:	0007879b          	sext.w	a5,a5
    80007a64:	fe079ae3          	bnez	a5,80007a58 <acquire+0x5c>
    80007a68:	0ff0000f          	fence
    80007a6c:	fffff097          	auipc	ra,0xfffff
    80007a70:	8a8080e7          	jalr	-1880(ra) # 80006314 <mycpu>
    80007a74:	01813083          	ld	ra,24(sp)
    80007a78:	01013403          	ld	s0,16(sp)
    80007a7c:	00a4b823          	sd	a0,16(s1)
    80007a80:	00013903          	ld	s2,0(sp)
    80007a84:	00813483          	ld	s1,8(sp)
    80007a88:	02010113          	addi	sp,sp,32
    80007a8c:	00008067          	ret
    80007a90:	0104b903          	ld	s2,16(s1)
    80007a94:	fffff097          	auipc	ra,0xfffff
    80007a98:	880080e7          	jalr	-1920(ra) # 80006314 <mycpu>
    80007a9c:	faa91ce3          	bne	s2,a0,80007a54 <acquire+0x58>
    80007aa0:	00002517          	auipc	a0,0x2
    80007aa4:	ba050513          	addi	a0,a0,-1120 # 80009640 <digits+0x20>
    80007aa8:	fffff097          	auipc	ra,0xfffff
    80007aac:	224080e7          	jalr	548(ra) # 80006ccc <panic>
    80007ab0:	00195913          	srli	s2,s2,0x1
    80007ab4:	fffff097          	auipc	ra,0xfffff
    80007ab8:	860080e7          	jalr	-1952(ra) # 80006314 <mycpu>
    80007abc:	00197913          	andi	s2,s2,1
    80007ac0:	07252e23          	sw	s2,124(a0)
    80007ac4:	f75ff06f          	j	80007a38 <acquire+0x3c>

0000000080007ac8 <release>:
    80007ac8:	fe010113          	addi	sp,sp,-32
    80007acc:	00813823          	sd	s0,16(sp)
    80007ad0:	00113c23          	sd	ra,24(sp)
    80007ad4:	00913423          	sd	s1,8(sp)
    80007ad8:	01213023          	sd	s2,0(sp)
    80007adc:	02010413          	addi	s0,sp,32
    80007ae0:	00052783          	lw	a5,0(a0)
    80007ae4:	00079a63          	bnez	a5,80007af8 <release+0x30>
    80007ae8:	00002517          	auipc	a0,0x2
    80007aec:	b6050513          	addi	a0,a0,-1184 # 80009648 <digits+0x28>
    80007af0:	fffff097          	auipc	ra,0xfffff
    80007af4:	1dc080e7          	jalr	476(ra) # 80006ccc <panic>
    80007af8:	01053903          	ld	s2,16(a0)
    80007afc:	00050493          	mv	s1,a0
    80007b00:	fffff097          	auipc	ra,0xfffff
    80007b04:	814080e7          	jalr	-2028(ra) # 80006314 <mycpu>
    80007b08:	fea910e3          	bne	s2,a0,80007ae8 <release+0x20>
    80007b0c:	0004b823          	sd	zero,16(s1)
    80007b10:	0ff0000f          	fence
    80007b14:	0f50000f          	fence	iorw,ow
    80007b18:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007b1c:	ffffe097          	auipc	ra,0xffffe
    80007b20:	7f8080e7          	jalr	2040(ra) # 80006314 <mycpu>
    80007b24:	100027f3          	csrr	a5,sstatus
    80007b28:	0027f793          	andi	a5,a5,2
    80007b2c:	04079a63          	bnez	a5,80007b80 <release+0xb8>
    80007b30:	07852783          	lw	a5,120(a0)
    80007b34:	02f05e63          	blez	a5,80007b70 <release+0xa8>
    80007b38:	fff7871b          	addiw	a4,a5,-1
    80007b3c:	06e52c23          	sw	a4,120(a0)
    80007b40:	00071c63          	bnez	a4,80007b58 <release+0x90>
    80007b44:	07c52783          	lw	a5,124(a0)
    80007b48:	00078863          	beqz	a5,80007b58 <release+0x90>
    80007b4c:	100027f3          	csrr	a5,sstatus
    80007b50:	0027e793          	ori	a5,a5,2
    80007b54:	10079073          	csrw	sstatus,a5
    80007b58:	01813083          	ld	ra,24(sp)
    80007b5c:	01013403          	ld	s0,16(sp)
    80007b60:	00813483          	ld	s1,8(sp)
    80007b64:	00013903          	ld	s2,0(sp)
    80007b68:	02010113          	addi	sp,sp,32
    80007b6c:	00008067          	ret
    80007b70:	00002517          	auipc	a0,0x2
    80007b74:	af850513          	addi	a0,a0,-1288 # 80009668 <digits+0x48>
    80007b78:	fffff097          	auipc	ra,0xfffff
    80007b7c:	154080e7          	jalr	340(ra) # 80006ccc <panic>
    80007b80:	00002517          	auipc	a0,0x2
    80007b84:	ad050513          	addi	a0,a0,-1328 # 80009650 <digits+0x30>
    80007b88:	fffff097          	auipc	ra,0xfffff
    80007b8c:	144080e7          	jalr	324(ra) # 80006ccc <panic>

0000000080007b90 <holding>:
    80007b90:	00052783          	lw	a5,0(a0)
    80007b94:	00079663          	bnez	a5,80007ba0 <holding+0x10>
    80007b98:	00000513          	li	a0,0
    80007b9c:	00008067          	ret
    80007ba0:	fe010113          	addi	sp,sp,-32
    80007ba4:	00813823          	sd	s0,16(sp)
    80007ba8:	00913423          	sd	s1,8(sp)
    80007bac:	00113c23          	sd	ra,24(sp)
    80007bb0:	02010413          	addi	s0,sp,32
    80007bb4:	01053483          	ld	s1,16(a0)
    80007bb8:	ffffe097          	auipc	ra,0xffffe
    80007bbc:	75c080e7          	jalr	1884(ra) # 80006314 <mycpu>
    80007bc0:	01813083          	ld	ra,24(sp)
    80007bc4:	01013403          	ld	s0,16(sp)
    80007bc8:	40a48533          	sub	a0,s1,a0
    80007bcc:	00153513          	seqz	a0,a0
    80007bd0:	00813483          	ld	s1,8(sp)
    80007bd4:	02010113          	addi	sp,sp,32
    80007bd8:	00008067          	ret

0000000080007bdc <push_off>:
    80007bdc:	fe010113          	addi	sp,sp,-32
    80007be0:	00813823          	sd	s0,16(sp)
    80007be4:	00113c23          	sd	ra,24(sp)
    80007be8:	00913423          	sd	s1,8(sp)
    80007bec:	02010413          	addi	s0,sp,32
    80007bf0:	100024f3          	csrr	s1,sstatus
    80007bf4:	100027f3          	csrr	a5,sstatus
    80007bf8:	ffd7f793          	andi	a5,a5,-3
    80007bfc:	10079073          	csrw	sstatus,a5
    80007c00:	ffffe097          	auipc	ra,0xffffe
    80007c04:	714080e7          	jalr	1812(ra) # 80006314 <mycpu>
    80007c08:	07852783          	lw	a5,120(a0)
    80007c0c:	02078663          	beqz	a5,80007c38 <push_off+0x5c>
    80007c10:	ffffe097          	auipc	ra,0xffffe
    80007c14:	704080e7          	jalr	1796(ra) # 80006314 <mycpu>
    80007c18:	07852783          	lw	a5,120(a0)
    80007c1c:	01813083          	ld	ra,24(sp)
    80007c20:	01013403          	ld	s0,16(sp)
    80007c24:	0017879b          	addiw	a5,a5,1
    80007c28:	06f52c23          	sw	a5,120(a0)
    80007c2c:	00813483          	ld	s1,8(sp)
    80007c30:	02010113          	addi	sp,sp,32
    80007c34:	00008067          	ret
    80007c38:	0014d493          	srli	s1,s1,0x1
    80007c3c:	ffffe097          	auipc	ra,0xffffe
    80007c40:	6d8080e7          	jalr	1752(ra) # 80006314 <mycpu>
    80007c44:	0014f493          	andi	s1,s1,1
    80007c48:	06952e23          	sw	s1,124(a0)
    80007c4c:	fc5ff06f          	j	80007c10 <push_off+0x34>

0000000080007c50 <pop_off>:
    80007c50:	ff010113          	addi	sp,sp,-16
    80007c54:	00813023          	sd	s0,0(sp)
    80007c58:	00113423          	sd	ra,8(sp)
    80007c5c:	01010413          	addi	s0,sp,16
    80007c60:	ffffe097          	auipc	ra,0xffffe
    80007c64:	6b4080e7          	jalr	1716(ra) # 80006314 <mycpu>
    80007c68:	100027f3          	csrr	a5,sstatus
    80007c6c:	0027f793          	andi	a5,a5,2
    80007c70:	04079663          	bnez	a5,80007cbc <pop_off+0x6c>
    80007c74:	07852783          	lw	a5,120(a0)
    80007c78:	02f05a63          	blez	a5,80007cac <pop_off+0x5c>
    80007c7c:	fff7871b          	addiw	a4,a5,-1
    80007c80:	06e52c23          	sw	a4,120(a0)
    80007c84:	00071c63          	bnez	a4,80007c9c <pop_off+0x4c>
    80007c88:	07c52783          	lw	a5,124(a0)
    80007c8c:	00078863          	beqz	a5,80007c9c <pop_off+0x4c>
    80007c90:	100027f3          	csrr	a5,sstatus
    80007c94:	0027e793          	ori	a5,a5,2
    80007c98:	10079073          	csrw	sstatus,a5
    80007c9c:	00813083          	ld	ra,8(sp)
    80007ca0:	00013403          	ld	s0,0(sp)
    80007ca4:	01010113          	addi	sp,sp,16
    80007ca8:	00008067          	ret
    80007cac:	00002517          	auipc	a0,0x2
    80007cb0:	9bc50513          	addi	a0,a0,-1604 # 80009668 <digits+0x48>
    80007cb4:	fffff097          	auipc	ra,0xfffff
    80007cb8:	018080e7          	jalr	24(ra) # 80006ccc <panic>
    80007cbc:	00002517          	auipc	a0,0x2
    80007cc0:	99450513          	addi	a0,a0,-1644 # 80009650 <digits+0x30>
    80007cc4:	fffff097          	auipc	ra,0xfffff
    80007cc8:	008080e7          	jalr	8(ra) # 80006ccc <panic>

0000000080007ccc <push_on>:
    80007ccc:	fe010113          	addi	sp,sp,-32
    80007cd0:	00813823          	sd	s0,16(sp)
    80007cd4:	00113c23          	sd	ra,24(sp)
    80007cd8:	00913423          	sd	s1,8(sp)
    80007cdc:	02010413          	addi	s0,sp,32
    80007ce0:	100024f3          	csrr	s1,sstatus
    80007ce4:	100027f3          	csrr	a5,sstatus
    80007ce8:	0027e793          	ori	a5,a5,2
    80007cec:	10079073          	csrw	sstatus,a5
    80007cf0:	ffffe097          	auipc	ra,0xffffe
    80007cf4:	624080e7          	jalr	1572(ra) # 80006314 <mycpu>
    80007cf8:	07852783          	lw	a5,120(a0)
    80007cfc:	02078663          	beqz	a5,80007d28 <push_on+0x5c>
    80007d00:	ffffe097          	auipc	ra,0xffffe
    80007d04:	614080e7          	jalr	1556(ra) # 80006314 <mycpu>
    80007d08:	07852783          	lw	a5,120(a0)
    80007d0c:	01813083          	ld	ra,24(sp)
    80007d10:	01013403          	ld	s0,16(sp)
    80007d14:	0017879b          	addiw	a5,a5,1
    80007d18:	06f52c23          	sw	a5,120(a0)
    80007d1c:	00813483          	ld	s1,8(sp)
    80007d20:	02010113          	addi	sp,sp,32
    80007d24:	00008067          	ret
    80007d28:	0014d493          	srli	s1,s1,0x1
    80007d2c:	ffffe097          	auipc	ra,0xffffe
    80007d30:	5e8080e7          	jalr	1512(ra) # 80006314 <mycpu>
    80007d34:	0014f493          	andi	s1,s1,1
    80007d38:	06952e23          	sw	s1,124(a0)
    80007d3c:	fc5ff06f          	j	80007d00 <push_on+0x34>

0000000080007d40 <pop_on>:
    80007d40:	ff010113          	addi	sp,sp,-16
    80007d44:	00813023          	sd	s0,0(sp)
    80007d48:	00113423          	sd	ra,8(sp)
    80007d4c:	01010413          	addi	s0,sp,16
    80007d50:	ffffe097          	auipc	ra,0xffffe
    80007d54:	5c4080e7          	jalr	1476(ra) # 80006314 <mycpu>
    80007d58:	100027f3          	csrr	a5,sstatus
    80007d5c:	0027f793          	andi	a5,a5,2
    80007d60:	04078463          	beqz	a5,80007da8 <pop_on+0x68>
    80007d64:	07852783          	lw	a5,120(a0)
    80007d68:	02f05863          	blez	a5,80007d98 <pop_on+0x58>
    80007d6c:	fff7879b          	addiw	a5,a5,-1
    80007d70:	06f52c23          	sw	a5,120(a0)
    80007d74:	07853783          	ld	a5,120(a0)
    80007d78:	00079863          	bnez	a5,80007d88 <pop_on+0x48>
    80007d7c:	100027f3          	csrr	a5,sstatus
    80007d80:	ffd7f793          	andi	a5,a5,-3
    80007d84:	10079073          	csrw	sstatus,a5
    80007d88:	00813083          	ld	ra,8(sp)
    80007d8c:	00013403          	ld	s0,0(sp)
    80007d90:	01010113          	addi	sp,sp,16
    80007d94:	00008067          	ret
    80007d98:	00002517          	auipc	a0,0x2
    80007d9c:	8f850513          	addi	a0,a0,-1800 # 80009690 <digits+0x70>
    80007da0:	fffff097          	auipc	ra,0xfffff
    80007da4:	f2c080e7          	jalr	-212(ra) # 80006ccc <panic>
    80007da8:	00002517          	auipc	a0,0x2
    80007dac:	8c850513          	addi	a0,a0,-1848 # 80009670 <digits+0x50>
    80007db0:	fffff097          	auipc	ra,0xfffff
    80007db4:	f1c080e7          	jalr	-228(ra) # 80006ccc <panic>

0000000080007db8 <__memset>:
    80007db8:	ff010113          	addi	sp,sp,-16
    80007dbc:	00813423          	sd	s0,8(sp)
    80007dc0:	01010413          	addi	s0,sp,16
    80007dc4:	1a060e63          	beqz	a2,80007f80 <__memset+0x1c8>
    80007dc8:	40a007b3          	neg	a5,a0
    80007dcc:	0077f793          	andi	a5,a5,7
    80007dd0:	00778693          	addi	a3,a5,7
    80007dd4:	00b00813          	li	a6,11
    80007dd8:	0ff5f593          	andi	a1,a1,255
    80007ddc:	fff6071b          	addiw	a4,a2,-1
    80007de0:	1b06e663          	bltu	a3,a6,80007f8c <__memset+0x1d4>
    80007de4:	1cd76463          	bltu	a4,a3,80007fac <__memset+0x1f4>
    80007de8:	1a078e63          	beqz	a5,80007fa4 <__memset+0x1ec>
    80007dec:	00b50023          	sb	a1,0(a0)
    80007df0:	00100713          	li	a4,1
    80007df4:	1ae78463          	beq	a5,a4,80007f9c <__memset+0x1e4>
    80007df8:	00b500a3          	sb	a1,1(a0)
    80007dfc:	00200713          	li	a4,2
    80007e00:	1ae78a63          	beq	a5,a4,80007fb4 <__memset+0x1fc>
    80007e04:	00b50123          	sb	a1,2(a0)
    80007e08:	00300713          	li	a4,3
    80007e0c:	18e78463          	beq	a5,a4,80007f94 <__memset+0x1dc>
    80007e10:	00b501a3          	sb	a1,3(a0)
    80007e14:	00400713          	li	a4,4
    80007e18:	1ae78263          	beq	a5,a4,80007fbc <__memset+0x204>
    80007e1c:	00b50223          	sb	a1,4(a0)
    80007e20:	00500713          	li	a4,5
    80007e24:	1ae78063          	beq	a5,a4,80007fc4 <__memset+0x20c>
    80007e28:	00b502a3          	sb	a1,5(a0)
    80007e2c:	00700713          	li	a4,7
    80007e30:	18e79e63          	bne	a5,a4,80007fcc <__memset+0x214>
    80007e34:	00b50323          	sb	a1,6(a0)
    80007e38:	00700e93          	li	t4,7
    80007e3c:	00859713          	slli	a4,a1,0x8
    80007e40:	00e5e733          	or	a4,a1,a4
    80007e44:	01059e13          	slli	t3,a1,0x10
    80007e48:	01c76e33          	or	t3,a4,t3
    80007e4c:	01859313          	slli	t1,a1,0x18
    80007e50:	006e6333          	or	t1,t3,t1
    80007e54:	02059893          	slli	a7,a1,0x20
    80007e58:	40f60e3b          	subw	t3,a2,a5
    80007e5c:	011368b3          	or	a7,t1,a7
    80007e60:	02859813          	slli	a6,a1,0x28
    80007e64:	0108e833          	or	a6,a7,a6
    80007e68:	03059693          	slli	a3,a1,0x30
    80007e6c:	003e589b          	srliw	a7,t3,0x3
    80007e70:	00d866b3          	or	a3,a6,a3
    80007e74:	03859713          	slli	a4,a1,0x38
    80007e78:	00389813          	slli	a6,a7,0x3
    80007e7c:	00f507b3          	add	a5,a0,a5
    80007e80:	00e6e733          	or	a4,a3,a4
    80007e84:	000e089b          	sext.w	a7,t3
    80007e88:	00f806b3          	add	a3,a6,a5
    80007e8c:	00e7b023          	sd	a4,0(a5)
    80007e90:	00878793          	addi	a5,a5,8
    80007e94:	fed79ce3          	bne	a5,a3,80007e8c <__memset+0xd4>
    80007e98:	ff8e7793          	andi	a5,t3,-8
    80007e9c:	0007871b          	sext.w	a4,a5
    80007ea0:	01d787bb          	addw	a5,a5,t4
    80007ea4:	0ce88e63          	beq	a7,a4,80007f80 <__memset+0x1c8>
    80007ea8:	00f50733          	add	a4,a0,a5
    80007eac:	00b70023          	sb	a1,0(a4)
    80007eb0:	0017871b          	addiw	a4,a5,1
    80007eb4:	0cc77663          	bgeu	a4,a2,80007f80 <__memset+0x1c8>
    80007eb8:	00e50733          	add	a4,a0,a4
    80007ebc:	00b70023          	sb	a1,0(a4)
    80007ec0:	0027871b          	addiw	a4,a5,2
    80007ec4:	0ac77e63          	bgeu	a4,a2,80007f80 <__memset+0x1c8>
    80007ec8:	00e50733          	add	a4,a0,a4
    80007ecc:	00b70023          	sb	a1,0(a4)
    80007ed0:	0037871b          	addiw	a4,a5,3
    80007ed4:	0ac77663          	bgeu	a4,a2,80007f80 <__memset+0x1c8>
    80007ed8:	00e50733          	add	a4,a0,a4
    80007edc:	00b70023          	sb	a1,0(a4)
    80007ee0:	0047871b          	addiw	a4,a5,4
    80007ee4:	08c77e63          	bgeu	a4,a2,80007f80 <__memset+0x1c8>
    80007ee8:	00e50733          	add	a4,a0,a4
    80007eec:	00b70023          	sb	a1,0(a4)
    80007ef0:	0057871b          	addiw	a4,a5,5
    80007ef4:	08c77663          	bgeu	a4,a2,80007f80 <__memset+0x1c8>
    80007ef8:	00e50733          	add	a4,a0,a4
    80007efc:	00b70023          	sb	a1,0(a4)
    80007f00:	0067871b          	addiw	a4,a5,6
    80007f04:	06c77e63          	bgeu	a4,a2,80007f80 <__memset+0x1c8>
    80007f08:	00e50733          	add	a4,a0,a4
    80007f0c:	00b70023          	sb	a1,0(a4)
    80007f10:	0077871b          	addiw	a4,a5,7
    80007f14:	06c77663          	bgeu	a4,a2,80007f80 <__memset+0x1c8>
    80007f18:	00e50733          	add	a4,a0,a4
    80007f1c:	00b70023          	sb	a1,0(a4)
    80007f20:	0087871b          	addiw	a4,a5,8
    80007f24:	04c77e63          	bgeu	a4,a2,80007f80 <__memset+0x1c8>
    80007f28:	00e50733          	add	a4,a0,a4
    80007f2c:	00b70023          	sb	a1,0(a4)
    80007f30:	0097871b          	addiw	a4,a5,9
    80007f34:	04c77663          	bgeu	a4,a2,80007f80 <__memset+0x1c8>
    80007f38:	00e50733          	add	a4,a0,a4
    80007f3c:	00b70023          	sb	a1,0(a4)
    80007f40:	00a7871b          	addiw	a4,a5,10
    80007f44:	02c77e63          	bgeu	a4,a2,80007f80 <__memset+0x1c8>
    80007f48:	00e50733          	add	a4,a0,a4
    80007f4c:	00b70023          	sb	a1,0(a4)
    80007f50:	00b7871b          	addiw	a4,a5,11
    80007f54:	02c77663          	bgeu	a4,a2,80007f80 <__memset+0x1c8>
    80007f58:	00e50733          	add	a4,a0,a4
    80007f5c:	00b70023          	sb	a1,0(a4)
    80007f60:	00c7871b          	addiw	a4,a5,12
    80007f64:	00c77e63          	bgeu	a4,a2,80007f80 <__memset+0x1c8>
    80007f68:	00e50733          	add	a4,a0,a4
    80007f6c:	00b70023          	sb	a1,0(a4)
    80007f70:	00d7879b          	addiw	a5,a5,13
    80007f74:	00c7f663          	bgeu	a5,a2,80007f80 <__memset+0x1c8>
    80007f78:	00f507b3          	add	a5,a0,a5
    80007f7c:	00b78023          	sb	a1,0(a5)
    80007f80:	00813403          	ld	s0,8(sp)
    80007f84:	01010113          	addi	sp,sp,16
    80007f88:	00008067          	ret
    80007f8c:	00b00693          	li	a3,11
    80007f90:	e55ff06f          	j	80007de4 <__memset+0x2c>
    80007f94:	00300e93          	li	t4,3
    80007f98:	ea5ff06f          	j	80007e3c <__memset+0x84>
    80007f9c:	00100e93          	li	t4,1
    80007fa0:	e9dff06f          	j	80007e3c <__memset+0x84>
    80007fa4:	00000e93          	li	t4,0
    80007fa8:	e95ff06f          	j	80007e3c <__memset+0x84>
    80007fac:	00000793          	li	a5,0
    80007fb0:	ef9ff06f          	j	80007ea8 <__memset+0xf0>
    80007fb4:	00200e93          	li	t4,2
    80007fb8:	e85ff06f          	j	80007e3c <__memset+0x84>
    80007fbc:	00400e93          	li	t4,4
    80007fc0:	e7dff06f          	j	80007e3c <__memset+0x84>
    80007fc4:	00500e93          	li	t4,5
    80007fc8:	e75ff06f          	j	80007e3c <__memset+0x84>
    80007fcc:	00600e93          	li	t4,6
    80007fd0:	e6dff06f          	j	80007e3c <__memset+0x84>

0000000080007fd4 <__memmove>:
    80007fd4:	ff010113          	addi	sp,sp,-16
    80007fd8:	00813423          	sd	s0,8(sp)
    80007fdc:	01010413          	addi	s0,sp,16
    80007fe0:	0e060863          	beqz	a2,800080d0 <__memmove+0xfc>
    80007fe4:	fff6069b          	addiw	a3,a2,-1
    80007fe8:	0006881b          	sext.w	a6,a3
    80007fec:	0ea5e863          	bltu	a1,a0,800080dc <__memmove+0x108>
    80007ff0:	00758713          	addi	a4,a1,7
    80007ff4:	00a5e7b3          	or	a5,a1,a0
    80007ff8:	40a70733          	sub	a4,a4,a0
    80007ffc:	0077f793          	andi	a5,a5,7
    80008000:	00f73713          	sltiu	a4,a4,15
    80008004:	00174713          	xori	a4,a4,1
    80008008:	0017b793          	seqz	a5,a5
    8000800c:	00e7f7b3          	and	a5,a5,a4
    80008010:	10078863          	beqz	a5,80008120 <__memmove+0x14c>
    80008014:	00900793          	li	a5,9
    80008018:	1107f463          	bgeu	a5,a6,80008120 <__memmove+0x14c>
    8000801c:	0036581b          	srliw	a6,a2,0x3
    80008020:	fff8081b          	addiw	a6,a6,-1
    80008024:	02081813          	slli	a6,a6,0x20
    80008028:	01d85893          	srli	a7,a6,0x1d
    8000802c:	00858813          	addi	a6,a1,8
    80008030:	00058793          	mv	a5,a1
    80008034:	00050713          	mv	a4,a0
    80008038:	01088833          	add	a6,a7,a6
    8000803c:	0007b883          	ld	a7,0(a5)
    80008040:	00878793          	addi	a5,a5,8
    80008044:	00870713          	addi	a4,a4,8
    80008048:	ff173c23          	sd	a7,-8(a4)
    8000804c:	ff0798e3          	bne	a5,a6,8000803c <__memmove+0x68>
    80008050:	ff867713          	andi	a4,a2,-8
    80008054:	02071793          	slli	a5,a4,0x20
    80008058:	0207d793          	srli	a5,a5,0x20
    8000805c:	00f585b3          	add	a1,a1,a5
    80008060:	40e686bb          	subw	a3,a3,a4
    80008064:	00f507b3          	add	a5,a0,a5
    80008068:	06e60463          	beq	a2,a4,800080d0 <__memmove+0xfc>
    8000806c:	0005c703          	lbu	a4,0(a1)
    80008070:	00e78023          	sb	a4,0(a5)
    80008074:	04068e63          	beqz	a3,800080d0 <__memmove+0xfc>
    80008078:	0015c603          	lbu	a2,1(a1)
    8000807c:	00100713          	li	a4,1
    80008080:	00c780a3          	sb	a2,1(a5)
    80008084:	04e68663          	beq	a3,a4,800080d0 <__memmove+0xfc>
    80008088:	0025c603          	lbu	a2,2(a1)
    8000808c:	00200713          	li	a4,2
    80008090:	00c78123          	sb	a2,2(a5)
    80008094:	02e68e63          	beq	a3,a4,800080d0 <__memmove+0xfc>
    80008098:	0035c603          	lbu	a2,3(a1)
    8000809c:	00300713          	li	a4,3
    800080a0:	00c781a3          	sb	a2,3(a5)
    800080a4:	02e68663          	beq	a3,a4,800080d0 <__memmove+0xfc>
    800080a8:	0045c603          	lbu	a2,4(a1)
    800080ac:	00400713          	li	a4,4
    800080b0:	00c78223          	sb	a2,4(a5)
    800080b4:	00e68e63          	beq	a3,a4,800080d0 <__memmove+0xfc>
    800080b8:	0055c603          	lbu	a2,5(a1)
    800080bc:	00500713          	li	a4,5
    800080c0:	00c782a3          	sb	a2,5(a5)
    800080c4:	00e68663          	beq	a3,a4,800080d0 <__memmove+0xfc>
    800080c8:	0065c703          	lbu	a4,6(a1)
    800080cc:	00e78323          	sb	a4,6(a5)
    800080d0:	00813403          	ld	s0,8(sp)
    800080d4:	01010113          	addi	sp,sp,16
    800080d8:	00008067          	ret
    800080dc:	02061713          	slli	a4,a2,0x20
    800080e0:	02075713          	srli	a4,a4,0x20
    800080e4:	00e587b3          	add	a5,a1,a4
    800080e8:	f0f574e3          	bgeu	a0,a5,80007ff0 <__memmove+0x1c>
    800080ec:	02069613          	slli	a2,a3,0x20
    800080f0:	02065613          	srli	a2,a2,0x20
    800080f4:	fff64613          	not	a2,a2
    800080f8:	00e50733          	add	a4,a0,a4
    800080fc:	00c78633          	add	a2,a5,a2
    80008100:	fff7c683          	lbu	a3,-1(a5)
    80008104:	fff78793          	addi	a5,a5,-1
    80008108:	fff70713          	addi	a4,a4,-1
    8000810c:	00d70023          	sb	a3,0(a4)
    80008110:	fec798e3          	bne	a5,a2,80008100 <__memmove+0x12c>
    80008114:	00813403          	ld	s0,8(sp)
    80008118:	01010113          	addi	sp,sp,16
    8000811c:	00008067          	ret
    80008120:	02069713          	slli	a4,a3,0x20
    80008124:	02075713          	srli	a4,a4,0x20
    80008128:	00170713          	addi	a4,a4,1
    8000812c:	00e50733          	add	a4,a0,a4
    80008130:	00050793          	mv	a5,a0
    80008134:	0005c683          	lbu	a3,0(a1)
    80008138:	00178793          	addi	a5,a5,1
    8000813c:	00158593          	addi	a1,a1,1
    80008140:	fed78fa3          	sb	a3,-1(a5)
    80008144:	fee798e3          	bne	a5,a4,80008134 <__memmove+0x160>
    80008148:	f89ff06f          	j	800080d0 <__memmove+0xfc>
	...
